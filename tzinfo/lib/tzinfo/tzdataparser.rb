#--
# Copyright (c) 2005 Philip Ross
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#++

require 'date'
require 'fileutils'

module TZInfo
  
  # Parses tzdata from ftp://elsie.nci.nih.gov/pub/ and transforms it into 
  # a set of Ruby classes that can be used through Timezone and Country.
  # 
  # Normally, this class wouldn't be used. It is only run to create a new
  # tzinfo version for a new version of the tzdata data.
  #
  # This process is extremely slow (optimization is required).
  class TZDataParser    
    # Minimum year that will be considered.
    MIN_YEAR = 1800
    
    # Maximum year that will be considered.
    MAX_YEAR = 2050
    
    # Whether to generate zone definitions (set to false to stop zones being
    # generated).    
    attr_accessor :generate_zones
    
    # Whether to generate country definitions (set to false to stop countries
    # being generated).
    attr_accessor :generate_countries
    
    # Limit the set of zones to generate (set to an array containing zone
    # identifiers).
    attr_accessor :only_zones
    
    # Limit the set of countries to generate (set to an array containing
    # country codes).
    attr_accessor :only_countries
  
    # Zones to exclude from generation when not using only_zones (set to an
    # array containing zone identifiers). Defaults to:
    #
    #   ['Asia/Riyadh87', 'Asia/Riyadh88', 'Asia/Riyadh89',
    #    'Mideast/Riyadh87', 'Mideast/Riyadh88', 'Mideast/Ruyadh89']
    attr_accessor :exclude_zones
    
    # Countries to exclude from generation when not using only_countries (set
    # to an array containing country codes).
    attr_accessor :exclude_countries    
    
    # Initializes a new TZDataParser. input_dir must contain the extracted
    # tzdata tarball. output_dir is the location to output the classes
    # (in countries and definitions directories).
    def initialize(input_dir, output_dir)
      super()
      @input_dir = input_dir
      @output_dir = output_dir      
      @rule_sets = {}
      @zones = {}
      @countries = {}
      @no_rules = TZDataNoRules.new
      @generate_zones = true
      @generate_countries = true
      @only_zones = []
      @only_countries = []
      @exclude_zones = []
      @exclude_countries = []
    end
    
    # Reads the tzdata source and generates the classes. Takes a long time
    # to run. Currently outputs debugging information to standard out.
    def execute
      Dir.foreach(@input_dir) {|file|
        load_rules(file) if file =~ /^[^\.]+$/        
      }  
      
      Dir.foreach(@input_dir) {|file|
        load_zones(file) if file =~ /^[^\.]+$/        
      }
      
      Dir.foreach(@input_dir) {|file|
        load_links(file) if file =~ /^[^\.]+$/        
      }
      
      load_countries
      
      if @generate_zones
        modules = []
        
        if @only_zones.nil? || @only_zones.empty?
          @zones.each_value {|zone|
            zone.write_class(@output_dir) unless @exclude_zones.include?(zone.name)
            modules << zone.path_elements
          }
        else
          @only_zones.each {|id|
            zone = @zones[id]
            zone.write_class(@output_dir)
            modules << zone.path_elements
          }          
        end
        
        modules.uniq!
        
        modules.each {|path_elements| write_module(path_elements) unless path_elements.empty?}
      end
      
      if @generate_countries
        if @only_countries.nil? || @only_countries.empty?          
          @countries.each_value {|country|
            country.write_class(@output_dir) unless @exclude_countries.include?(country.code)
          }
        else
          @only_countries.each {|code| @countries[code].write_class(@output_dir) }
        end
      
        write_countries_index
      end
    end
    
    # Parses a month specified in the tz data and converts it to a number
    # between 1 and 12 representing January to December.
    def self.parse_month(month)
      lower = month.downcase
      if lower =~ /^jan/
        @month = 1
      elsif lower =~ /^feb/
        @month = 2
      elsif lower =~ /^mar/
        @month = 3
      elsif lower =~ /^apr/
        @month = 4
      elsif lower =~ /^may/
        @month = 5
      elsif lower =~ /^jun/
        @month = 6
      elsif lower =~ /^jul/
        @month = 7
      elsif lower =~ /^aug/
        @month = 8
      elsif lower =~ /^sep/
        @month = 9
      elsif lower =~ /^oct/
        @month = 10
      elsif lower =~ /^nov/
        @month = 11
      elsif lower =~ /^dec/
        @month = 12
      else
        raise "Invalid month: #{month}"
      end
    end
    
    # Parses an offset string [-]h:m:s (minutes and seconds are optional). Returns
    # the offset in seconds.
    def self.parse_offset(offset)
      raise "Invalid time: #{offset}" if offset !~ /^(-)?([0-9]+)(:([0-9]+)(:([0-9]+))?)?$/
      
      negative = !$1.nil?      
      hour = $2.to_i
      minute = $4.nil? ? 0 : $4.to_i
      second = $6.nil? ? 0 : $6.to_i
      
      seconds = hour
      seconds = seconds * 60
      seconds = seconds + minute
      seconds = seconds * 60
      seconds = seconds + second
      seconds = -seconds if negative
      seconds
    end
    
    private
      # Loads all the Rule definitions from the tz data and stores them in
      # @rule_sets.
      def load_rules(file)
        puts 'load_rules: ' + file
        
        IO.foreach(@input_dir + File::SEPARATOR + file) {|line|
          line = line.gsub(/#.*$/, '')
          line = line.gsub(/\s+$/, '')
        
          if line =~ /^Rule\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)/
            
            name = $1    
            
            if @rule_sets[name].nil? 
              @rule_sets[name] = TZDataRuleSet.new(name) 
            end
            
            @rule_sets[name].add_rule(TZDataRule.new($2, $3, $4, $5, $6, $7, $8, $9))
          end          
        }                
      end
      
      # Gets a rules object for the given reference. Might be a named rule set,
      # a fixed offset or an empty ruleset.
      def get_rules(ref)
        if ref == '-'
          @no_rules
        elsif ref =~ /^[0-9]+:[0-9]+$/
          TZDataFixedOffsetRules.new(TZDataParser.parse_offset(ref))
        else
          rule_set = @rule_sets[ref]
          raise "Ruleset not found: #{ref}" if rule_set.nil?    
          rule_set
        end  
      end
      
      # Loads in the Zone definitions from the tz data and stores them in @zones.
      def load_zones(file)
        puts 'load_zones: ' + file
        
        in_zone = nil
        
        IO.foreach(@input_dir + File::SEPARATOR + file) {|line|
          line = line.gsub(/#.*$/, '')
          line = line.gsub(/\s+$/, '')
        
          if in_zone
            if line =~ /^\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)(\s+([0-9]+(\s+.*)?))?$/              
              
              in_zone.add_observance(TZDataObservance.new($1, get_rules($2), $3, $5))
              
              in_zone = nil if $4.nil? 
            end
          else
            if line =~ /^Zone\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)(\s+([0-9]+(\s+.*)?))?$/              
              name = $1
              
              if @zones[name].nil? 
                @zones[name] = TZDataZone.new(name)
              end                            
              
              @zones[name].add_observance(TZDataObservance.new($2, get_rules($3), $4, $6))
              
              in_zone = @zones[name] if !$5.nil?
            end
          end
        }
      end
      
      # Loads in the links and stores them in @zones.
      def load_links(file)
        puts 'load_links: ' + file
        
        IO.foreach(@input_dir + File::SEPARATOR + file) {|line|
          line = line.gsub(/#.*$/, '')
          line = line.gsub(/\s+$/, '')
        
          if line =~ /^Link\s+([^\s]+)\s+([^\s]+)/            
            name = $2           
            link_to = @zones[$1]
            raise "Link to zone not found (#{name}->#{link_to})" if link_to.nil?
            raise "Zone already defined: #{name}" if !@zones[name].nil?
            @zones[name] = TZDataLink.new(name, link_to)
          end          
        }
      end
      
      # Loads countries from iso3166.tab and zone.tab and stores the result in
      # @countries.
      def load_countries
        puts 'load_countries'
        
        IO.foreach(@input_dir + File::SEPARATOR + 'iso3166.tab') {|line|
          line = line.gsub(/#.*$/, '')
          line = line.gsub(/\s+$/, '')
          
          if line =~ /^([A-Z]{2})\s+(.*)$/
            code = $1
            name = $2            
            @countries[code] = TZDataCountry.new(code, name)
          end
        }
        
        IO.foreach(@input_dir + File::SEPARATOR + 'zone.tab') {|line|
          line = line.gsub(/#.*$/, '')
          line = line.gsub(/\s+$/, '')
          
          if line =~ /^([A-Z]{2})\s+([^\s]+)\s+([^\s]+)(\s+(.*))?$/
            code = $1
            zone_name = $3            
            
            country = @countries[code]
            raise "Country not found: #{code}" if country.nil?
            
            zone = @zones[zone_name]
            raise "Zone not found: #{zone_name}" if zone.nil?                        
            
            country.add_zone(zone)
          end
        }
      end
      
      # Writes a country index file.
      def write_countries_index
        dir = @output_dir + File::SEPARATOR + 'countries'      
        FileUtils.mkdir_p(dir)
        
        File.open(dir + File::SEPARATOR + 'Index.rb', 'w') {|file|
          file.binmode        
          file.puts('require \'tzinfo/country\'')        
          file.puts('module TZInfo')
          file.puts('module Countries')
                             
          file.puts('class Index #:nodoc:')
        
          file.puts('@@all_codes = [')
          
          @countries.each_value {|country|
            file.puts("'#{country.code.gsub(/'/, '\\\'')}',")
          }
          
          file.puts(']')
          file.puts('@@all_codes.freeze')
          
          file.puts('def self.all_codes')
          file.puts('  @@all_codes')
          file.puts('end')           
          
          file.puts('end') # end class
          
          
          file.puts('end') # end module Countries
          file.puts('end') # end module TZInfo
        }                      
      end
      
      # Writes a module definition with a const_missing method to load child
      # classes and modules.
      def write_module(path_elements)
        puts "writing module #{path_elements.join('::')}"
        
        File.open(@output_dir + File::SEPARATOR + 'definitions' + File::SEPARATOR + path_elements.join(File::SEPARATOR) + '.rb', 'w') {|file|
          file.binmode
          file.puts('require \'tzinfo/directory_loader\'')
        
          file.puts('module TZInfo')
          file.puts('module Definitions #:nodoc:')
          
          path_elements.each{|mod| file.puts("module #{mod} #:nodoc:")}
          
          file.puts('include DirectoryLoader')
          file.puts("directory 'definitions/#{path_elements.join('/')}'")
          
          (path_elements.length + 2).times {file.puts('end')}                              
        }
      end
    
  end
  
  # Base class for all rule sets.
  class TZDataRules #:nodoc:
    # Name of the rule set, e.g. EU.
    attr_reader :name
    
    def initialize(name)
      @name = name
    end
    
    def count
      0
    end
  end
  
  # Empty rule set with a fixed daylight savings (std) offset.
  class TZDataFixedOffsetRules < TZDataRules #:nodoc:
    attr_reader :offset
    
    def initialize(offset)
      super(offset.to_s)
      @offset = offset
    end        
  end
  
  # An empty set of rules.
  class TZDataNoRules < TZDataRules #:nodoc:
    def initialize
      super('-')
    end
  end
  
  # A rule set (as defined by Rule name in the tz data).
  class TZDataRuleSet < TZDataRules #:nodoc:       
    attr_reader :rules
    
    def initialize(name)
      super
      @rules = []
    end
    
    # Adds a new rule to the set.
    def add_rule(rule)
      @rules << rule
    end
    
    def count
      @rules.length
    end
    
    def each
      @rules.each {|rule| yield rule}
    end
  end    
  
  # A rule in a RuleSet (a single Rule line in the tz data).
  class TZDataRule #:nodoc:
    attr_reader :from
    attr_reader :to
    attr_reader :type
    attr_reader :in_month
    attr_reader :on_day
    attr_reader :at_time
    attr_reader :save
    attr_reader :letter
    
    def initialize(from, to, type, in_month, on_day, at_time, save, letter)
      @from = parse_from(from)
      @to = parse_to(to)
      
      # replace a to of :only with the from year
      raise 'to cannot be only if from is minimum' if @to == :only && @from == :min
      @to = @from if @to == :only      
      
      @type = parse_type(type)
      @in_month = TZDataParser.parse_month(in_month)
      @on_day = TZDataDayOfMonth.new(on_day)
      @at_time = TZDataTime.new(at_time)
      @save = TZDataParser.parse_offset(save)
      @letter = parse_letter(letter)
    end
    
    def activate(year)
      # The following test ignores yearistype at present (currently unused in
      # the data. parse_type currently excepts on encountering a year type.
      if (@from == :min || @from <= year) && (@to == :max || @to >= year)                        
        TZDataActivatedRule.new(self, year)
      else
        nil
      end
    end
    
    def at_utc_time(year, utc_offset, std_offset)
      @at_time.to_utc(utc_offset, std_offset,
        year, @in_month, @on_day.to_absolute(year, @in_month))
    end
    
    private
      def parse_from(from)
        lower = from.downcase
        if lower =~ /^min/
          :min
        elsif lower =~ /^[0-9]+$/
          lower.to_i
        else
          raise "Invalid from: #{from}"
        end
      end
      
      def parse_to(to)
        lower = to.downcase
        if lower =~ /^max/
          :max
        elsif lower =~ /^o/
          :only
        elsif lower =~ /^[0-9]+$/
          lower.to_i
        else
          raise "Invalid to: #{to}"
        end
      end
      
      def parse_type(type)
        raise "Unsupported rule type: #{type}" if type != '-'
        nil
      end        
      
      def parse_letter(letter)
        if letter == '-'
          nil
        else
          letter
        end
      end
  end
  
  # Base class for Zones and Links.
  class TZDataDefinition #:nodoc:
    attr_reader :name
    attr_reader :name_elements
    attr_reader :path_elements
    
    def initialize(name)
      @name = name
      
      # + and - aren't allowed in class names
      @name_elements = name.gsub(/-/, '__m__').gsub(/\+/, '__p__').split(/\//)
      @path_elements = @name_elements.clone
      @path_elements.pop
    end        
    
    # Creates necessary directories, the file, writes the class header and footer
    # and yields to a block to write the content.    
    def create_file(output_dir)        
      dir = output_dir + File::SEPARATOR + 'definitions' + File::SEPARATOR + @path_elements.join(File::SEPARATOR)      
      FileUtils.mkdir_p(dir)
      
      File.open(output_dir + File::SEPARATOR + 'definitions' + File::SEPARATOR + @name_elements.join(File::SEPARATOR) + '.rb', 'w') {|file|
        file.binmode
        write_requires(file)        
        file.puts('module TZInfo')
        file.puts('module Definitions #:nodoc:')
        @path_elements.each do |part| 
          file.puts("module #{part} #:nodoc:")
        end
        
        file.puts("class #{@name_elements.last} < #{superclass} #:nodoc:")
      
        yield file
                
        file.puts('end') # end class
        
        @path_elements.each do
          file.puts('end')
        end
        file.puts('end') # end module Definitions
        file.puts('end') # end module TZInfo
      }
    end
    
    # Called to write any requires into the file. Called by create_file.
    def write_requires(file)
      file.puts('require \'tzinfo/timezone\'')
    end
  end
  
  # A tz data Link.
  class TZDataLink < TZDataDefinition #:nodoc:
    attr_reader :link_to
    
    def initialize(name, link_to)
      super(name)
      @link_to = link_to
    end
    
    # Called to write any requires into the file. Called by create_file.
    def write_requires(file)
      super
      file.puts("require 'tzinfo/definitions/#{link_to.name_elements.join('/')}'")
    end
    
    # Superclass of this class (the class we are linking to).
    def superclass
      'Definitions::' + link_to.name_elements.join('::')
    end
    
    # Writes a class for this link.
    def write_class(output_dir)
      puts "writing link #{name}"
      
      create_file(output_dir) {|file|
        file.puts("set_identifier('#{@name.gsub(/'/, '\\\'')}')")
      }
    end
  end
  
  # A tz data Zone. Each line from the tz data is loaded as a TZDataObservance.
  class TZDataZone < TZDataDefinition #:nodoc:    
    attr_reader :observances
    
    def initialize(name)
      super
      @observances = []
    end
    
    def add_observance(observance)      
      @observances << observance
    end        
    
    # Superclass is a Timezone. Called by create_file.
    def superclass
      'Timezone'
    end
    
    # Writes the class for the zone. Iterates all the periods and asks them
    # to write all periods in the timezone.
    def write_class(output_dir) 
      puts "writing zone #{name}"
      
      create_file(output_dir) {|file|        
               
        file.puts('setup')
        file.puts("set_identifier('#{@name.gsub(/'/, '\\\'')}')")
        
        transitions = find_transitions
        transitions.output_class(file)                
      }      
    end
    
    private
      def find_transitions
        transitions = TZDataTransitions.new
        
        # algorithm from zic.c outzone
        
        start_time = nil
        until_time = nil
        
        
        @observances.each_with_index {|observance, i|
          std_offset = 0
          use_start = i > 0
          use_until = i < @observances.length - 1
          utc_offset = observance.utc_offset
          start_zone_id = nil
          start_utc_offset = observance.utc_offset
          start_std_offset = 0
          
          if observance.rule_set.count == 0
            std_offset = observance.std_offset
            start_zone_id = observance.format.expand(std_offset, nil)
            
            if use_start
              transitions << TZDataTransition.new(start_time, utc_offset, std_offset, start_zone_id)
              use_start = false
            else
              # zic algorithm only outputs this if std_offset is non-zero
              # to get the initial LMT range, we output this regardless
              transitions << TZDataTransition.new(nil, utc_offset, std_offset, start_zone_id)
            end  
          else
            (TZDataParser::MIN_YEAR..TZDataParser::MAX_YEAR).each {|year|
              if use_until && year > observance.valid_until.year
                break
              end
              
              activated_rules = []
              
              observance.rule_set.each {|rule|
                activated_rule = rule.activate(year)
                activated_rules << activated_rule unless activated_rule.nil?
              }
              
              while true 
                # turn until_time into UTC using the current utc_offset and std_offset
                until_time = observance.valid_until.to_utc(utc_offset, std_offset) if use_until
                
                earliest = nil

                activated_rules.each {|activated_rule| 
                  # recalculate the time using the current std_offset
                  activated_rule.calculate_time(utc_offset, std_offset) 
                  earliest = activated_rule if earliest.nil? || activated_rule.at < earliest.at                   
                }
                
                break if earliest.nil?                
                activated_rules.delete(earliest)                               
                break if use_until && earliest.at >= until_time                
                std_offset = earliest.rule.save                   
                use_start = false if use_start && earliest.at == start_time
                
                if use_start
                  if earliest.at < start_time
                    start_utc_offset = observance.utc_offset
                    start_std_offset = std_offset
                    start_zone_id = observance.format.expand(earliest.rule.save, earliest.rule.letter)                    
                    next
                  end
                  
                  if start_zone_id.nil? && start_utc_offset + start_std_offset == observance.utc_offset + std_offset
                    start_zone_id = observance.format.expand(earliest.rule.save, earliest.rule.letter)
                  end
                end
                
                zone_id = observance.format.expand(earliest.rule.save, earliest.rule.letter)
                transitions << TZDataTransition.new(earliest.at, observance.utc_offset, earliest.rule.save, zone_id)
              end              
            }
          end
        
          if use_start
            start_zone_id = observance.format.expand(nil, nil) if start_zone_id.nil? && observance.format.fixed?            
            raise 'Could not determine time zone abbreviation to use just after until time' if start_zone_id.nil?            
            transitions << TZDataTransition.new(start_time, start_utc_offset, start_std_offset, start_zone_id)
          end
                    
          start_time = observance.valid_until.to_utc(utc_offset, std_offset) if use_until 
        }
        
        transitions
      end
  end
  
  # A observance within a zone (a line within the zone definition).
  class TZDataObservance #:nodoc:
    attr_reader :utc_offset
    attr_reader :rule_set
    attr_reader :format
    attr_reader :valid_until
    
    def initialize(utc_offset, rule_set, format, valid_until)
      @utc_offset = TZDataParser.parse_offset(utc_offset)
      @rule_set = rule_set      
      @format = TZDataFormat.new(format)
      @valid_until = valid_until.nil? ? nil : TZDataUntil.new(valid_until)      
    end 
    
    def std_offset
      if @rule_set.kind_of?(TZDataFixedOffsetRules)
        @rule_set.offset
      else
        0
      end
    end
  end
  
  # Collection of TZDataTransition instances used when building a zone class.
  class TZDataTransitions #:nodoc:
    
    def initialize
      @transitions = []
    end
    
    def << (transition)
      @transitions << transition
    end 
    
    def output_class(file)
      optimize
      
      # Try and end on a transition to std if one happens in the last year.
      if @transitions.length > 1 && 
          @transitions.last.std_offset != 0 &&
          @transitions[@transitions.length - 2].std_offset == 0 &&
          @transitions[@transitions.length - 2].at_utc.year == TZDataParser::MAX_YEAR
        
        transitions = @transitions[0..@transitions.length - 2]
      else
        transitions = @transitions
      end
      
      previous = nil
      transitions.each {|transition|
        if previous.nil?
          # first transition
          # if it has a time, need to work out what the unbounded start before
          # it should have been
          
          if transition.std_offset == 0
            # treat the start time as nil
            previous = transition.clone_with_at(nil)             
          else
            first_std = @transitions.find {|t| t.std_offset == 0}
            
            if first_std.nil?
              previous = transition.clone_with_at(nil)
            else              
              first_std.clone_with_at(nil).write_period(file, transition.at_utc)
              previous = transition
            end            
          end
        else
          raise 'Only the first transition can have a nil start time' if transition.at_utc.nil?        
          previous.write_period(file, transition.at_utc)
          previous = transition
        end                
      }
      
      previous.write_period(file, nil) unless previous.nil?        
    end
    
    private
      def optimize
        @transitions.sort!
        
        # Optimization logic from zic.c writezone.
        
        from_i = 0
        to_i = 0
        
        while from_i < @transitions.length
          if to_i > 1 && 
              !@transitions[from_i].at_utc.nil?  &&
              !@transitions[to_i - 1].at_utc.nil? &&
              @transitions[from_i].at_utc + Rational(@transitions[to_i - 1].total_offset, 86400) <=
              @transitions[to_i - 1].at_utc + Rational(@transitions[to_i - 2].total_offset, 86400)
                      
            @transitions[to_i - 1] = @transitions[from_i].clone_with_at(@transitions[to_i - 1].at_utc)             
            from_i += 1
            next
          end
          
          # Shuffle transitions up, eliminating any redundant transitions 
          # along the way.
          if to_i == 0 ||
              @transitions[to_i - 1].total_offset != @transitions[from_i].total_offset ||
              @transitions[to_i - 1].zone_id != @transitions[from_i].zone_id
                      
            @transitions[to_i] = @transitions[from_i]
            to_i += 1            
          end
          
          from_i += 1
        end                
        
        if to_i > 0
          @transitions = @transitions[0..to_i - 1]
        else
          @transitions = []
        end                
      end            
  end
  
  # A transition that will be used to write the periods in a zone class.
  class TZDataTransition #:nodoc:
    include Comparable
    
    attr_reader :at_utc
    attr_reader :utc_offset
    attr_reader :std_offset
    attr_reader :zone_id
    
    def initialize(at_utc, utc_offset, std_offset, zone_id)
      @at_utc = at_utc
      @utc_offset = utc_offset
      @std_offset = std_offset
      @zone_id = zone_id
    end
    
    def to_s
      "At #{at_utc} UTC switch to UTC offset #{@utc_offset} with std offset #{@std_offset}, zone id #{@zone_id}"
    end
    
    def <=>(transition)
      if @at_utc == transition.at_utc
        0
      elsif @at_utc.nil?
        -1
      elsif transition.nil?
        1
      else       
        @at_utc - transition.at_utc
      end
    end
    
    def total_offset
      @utc_offset + @std_offset
    end
    
    def clone_with_at(at_utc)
      TZDataTransition.new(at_utc, @utc_offset, @std_offset, @zone_id)
    end
        
    def write_period(file, utc_end)        
      if @at_utc.nil?
        file.puts "add_unbounded_start_period {TimezonePeriod.new(nil,#{datetime_constructor(utc_end)},#{@utc_offset},#{@std_offset},:#{quote_str(@zone_id)})}"
      else
        file.puts "add_period(#{@at_utc.year},#{@at_utc.mon}) {TimezonePeriod.new(#{datetime_constructor(@at_utc)},#{datetime_constructor(utc_end)},#{@utc_offset},#{@std_offset},:#{quote_str(@zone_id)})}"
      end        
    end
     
    private
      def datetime_constructor(datetime)
        if datetime.nil? 
          'nil'
        elsif (1970..2037).include?(datetime.year)
          "#{Time.utc(datetime.year, datetime.mon, datetime.mday, datetime.hour, datetime.min, datetime.sec).to_i}"
        else
          "DateTime.new0(Rational.new!(#{datetime.ajd.numerator},#{datetime.ajd.denominator}),0,Date::ITALY)"          
        end
      end
      
      def quote_str(str)     
        if str =~ %r{[\-+']}
          "'#{str.gsub(/'/, '\\\'')}'"        
        else
          str
        end
      end      
  end
   
  # An instance of a rule for a year.
  class TZDataActivatedRule #:nodoc:
    attr_reader :rule
    attr_reader :year
    attr_reader :at
    
    def initialize(rule, year)
      @rule = rule
      @year = year
      @at = nil
    end
    
    def calculate_time(utc_offset, std_offset)
      @at = @rule.at_utc_time(@year, utc_offset, std_offset)
    end
  end
  
  # A tz data time definition - an hour, minute, second and reference. Reference
  # is either :utc, :standard or :wall_clock.
  class TZDataTime #:nodoc:
    attr_reader :hour
    attr_reader :minute
    attr_reader :second
    attr_reader :ref
    
    def initialize(spec)
      raise "Invalid time: #{spec}" if spec !~ /^([0-9]+)(:([0-9]+)(:([0-9]+))?)?([wguzs])?$/
      
      @hour = $1.to_i
      @minute = $3.nil? ? 0 : $3.to_i
      @second = $5.nil? ? 0 : $5.to_i
      
      if $6 == 's'
        @ref = :standard
      elsif $6 == 'g' || $6 == 'u' || $6 == 'z'
        @ref = :utc
      else
        @ref = :wall_clock
      end
    end
    
    # Converts the time to UTC given a utc_offset and std_offset.
    def to_utc(utc_offset, std_offset, year, month, day)      
      result = DateTime.new(year, month, day, @hour, @minute, @second)
      offset = 0
      offset = offset + utc_offset if @ref == :standard || @ref == :wall_clock            
      offset = offset + std_offset if @ref == :wall_clock       
      result - Rational(offset, 86400)            
    end
  end
    
  # A tz data day of the month reference. Can either be an absolute day,
  # a last week day or a week day >= or <= than a specific day of month.
  class TZDataDayOfMonth #:nodoc:
    attr_reader :type
    attr_reader :day_of_month
    attr_reader :day_of_week
    attr_reader :operator
    
    def initialize(spec)
      raise "Invalid on: #{spec}" if spec !~ /^([0-9]+)|(last([A-z]+))|(([A-z]+)([<>]=)([0-9]+))$/
      
      if $1
        @type = :absolute
        @day_of_month = $1.to_i
      elsif $3
        @type = :last
        @day_of_week = parse_day_of_week($3)
      else
        @type = :comparison
        @day_of_week = parse_day_of_week($5)
        @operator = parse_operator($6)
        @day_of_month = $7.to_i
      end
    end
    
    # Returns the absolute day of month for the given year and month.
    def to_absolute(year, month)
      case
        when @type == :last:
          last_day_in_month = (Date.new(year, month, 1) >> 1) - 1          
          offset = last_day_in_month.wday - @day_of_week
          offset = offset + 7 if offset < 0
          (last_day_in_month - offset).day
        when @type == :comparison:
          pivot = Date.new(year, month, @day_of_month)         
          offset = @day_of_week - pivot.wday
          offset = -offset if @operator == :less_equal
          offset = offset + 7 if offset < 0
          offset = -offset if @operator == :less_equal          
          result = pivot + offset
          if result.month != pivot.month
            puts self.inspect
            puts year
            puts month
          end
          raise 'No suitable date found' if result.month != pivot.month
          result.day          
        else #absolute
          @day_of_month
      end
    end
    
    private
      def parse_day_of_week(day_of_week)
        lower = day_of_week.downcase
        if lower =~ /^mon/
          1
        elsif lower =~ /^tue/
          2
        elsif lower =~ /^wed/
          3
        elsif lower =~ /^thu/
          4
        elsif lower =~ /^fri/
          5
        elsif lower =~ /^sat/
          6
        elsif lower =~ /^sun/
          0
        else
          raise "Invalid day of week: #{day_of_week}"
        end
      end
      
      def parse_operator(operator)
        if operator == '>='
          :greater_equal
        elsif operator == '<='
          :less_equal
        else
          raise "Invalid operator: #{operator}"
        end
      end
  end   
  
  # A tz data Zone until reference.
  class TZDataUntil #:nodoc:
    attr_reader :year
    attr_reader :month
    attr_reader :day
    attr_reader :time
    
    def initialize(spec)      
      parts = spec.split(/\s+/)      
      raise "Invalid until: #{spec}" if parts.length < 1
      
      @year = parts[0].to_i
      @month = parts.length > 1 ? TZDataParser.parse_month(parts[1]) : 1
      @day = TZDataDayOfMonth.new(parts.length > 2 ? parts[2] : '1')
      @time = TZDataTime.new(parts.length > 3 ? parts[3] : '00:00')
    end
    
    # Converts the reference to a UTC DateTime.
    def to_utc(utc_offset, std_offset)
      @time.to_utc(utc_offset, std_offset, @year, @month, @day.to_absolute(@year, @month))            
    end
  end
  
  # A tz data Zone format string. Either alternate standard/daylight-savings,
  # substitution (%s) format or a fixed string.
  class TZDataFormat #:nodoc:        
    def initialize(spec)
      if spec =~ /([A-z]+)\/([A-z]+)/
        @type = :alternate
        @standard_abbrev = $1
        @daylight_abbrev = $2
      elsif spec =~ /%s/
        @type = :subst
        @abbrev = spec
      else
        @type = :fixed
        @abbrev = spec
      end
    end
    
    # Expands given the current daylight savings offset and Rule string.
    def expand(std_offset, rule_string)
      if @type == :alternate
        if std_offset == 0
          @standard_abbrev
        else
          @daylight_abbrev
        end
      elsif @type == :subst
        sprintf(@abbrev, rule_string)
      else
        @abbrev
      end        
    end
    
    # True if a string from the rule is required to expand this format.
    def requires_rule_string?
      @type == :subst
    end
    
    # Is a fixed format string.
    def fixed?
      @type == :fixed
    end
  end
  
  # An ISO 3166 country.
  class TZDataCountry #:nodoc:
    attr_reader :code
    attr_reader :name
    attr_reader :zones
    
    def initialize(code, name)
      @code = code
      @name = name
      @zones = {}
    end
    
    def add_zone(zone)      
      @zones[zone.name] = zone      
    end
    
    def write_class(output_dir)      
      dir = output_dir + File::SEPARATOR + 'countries'      
      FileUtils.mkdir_p(dir)
      
      File.open(dir + File::SEPARATOR + @code + '.rb', 'w') {|file|
        file.binmode
        file.puts('require \'tzinfo/country\'')        
        file.puts('module TZInfo #:nodoc:')
        file.puts('module Countries #:nodoc:')
        
        file.puts("class #{@code} < Country #:nodoc:")
      
        file.puts('setup')
        file.puts("set_code('#{code.gsub(/'/, '\\\'')}')")
        file.puts("set_name('#{name.gsub(/'/, '\\\'')}')")
        
        @zones.each_value {|zone|          
          file.puts("add_zone('#{zone.name.gsub(/'/, '\\\'')}')")
        }
        
        file.puts('zones_added')
                
        
        file.puts('end') # end class
        
        
        file.puts('end') # end module Countries
        file.puts('end') # end module TZInfo
      }
    end
  end
end
