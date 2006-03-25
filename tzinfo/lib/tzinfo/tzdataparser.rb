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
      @exclude_zones = ['Asia/Riyadh87', 'Asia/Riyadh88', 'Asia/Riyadh89',
        'Mideast/Riyadh87', 'Mideast/Riyadh88', 'Mideast/Riyadh89']
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
        if @only_zones.nil? || @only_zones.empty?
          @zones.each_value {|zone|
            zone.write_class(@output_dir) unless @exclude_zones.include?(zone.name)
          }
        else
          @only_zones.each {|id| @zones[id].write_class(@output_dir) }
        end
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
          TZDataFixedOffsetRules.new(TZDataOffset.new(ref))
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
              
              in_zone.add_period(TZDataPeriod.new($1, get_rules($2), $3, $5))
              
              in_zone = nil if $4.nil? 
            end
          else
            if line =~ /^Zone\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)\s+([^\s]+)(\s+([0-9]+(\s+.*)?))?$/              
              name = $1
              
              if @zones[name].nil? 
                @zones[name] = TZDataZone.new(name)
              end                            
              
              @zones[name].add_period(TZDataPeriod.new($2, get_rules($3), $4, $6))
              
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
    
  end
  
  # Base class for all rule sets.
  class TZDataRules #:nodoc:
    # Name of the rule set, e.g. EU.
    attr_reader :name
    
    def initialize(name)
      @name = name
    end
    
    protected
      # Writes a period of time with the same utc and std offsets to the file.
      def write_period(file, utc_start, utc_end, period, std_offset, letter)
        # The tzdata neglects to define the identifier for certain periods
        # These have %s as the Zone format, but don't start with at the same
        # time as a rule is defined to fill in %s.
        zone_id = period.format.expand(std_offset, letter)
        if zone_id.empty?
          zone_id = 'Unknown'
        end
        
        if utc_start.nil?
          file.puts "add_unbounded_start_period {TimezonePeriod.new(nil,#{datetime_constructor(utc_end)},#{period.utc_offset.to_seconds},#{std_offset.to_seconds},:#{quote_str(zone_id)})}"
        else
          file.puts "add_period(#{utc_start.year},#{utc_start.mon}) {TimezonePeriod.new(#{datetime_constructor(utc_start)},#{datetime_constructor(utc_end)},#{period.utc_offset.to_seconds},#{std_offset.to_seconds},:#{quote_str(zone_id)})}"
        end
        #puts "Period from #{utc_start} to #{utc_end}, utc_offset=#{period.utc_offset.to_seconds}, std_offset=#{std_offset.to_seconds}, name=#{period.format.expand(std_offset, letter)}"
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
        "'#{str.gsub(/'/, '\\\'')}'" 
      end
  end
  
  # Empty rule set with a fixed daylight savings (std) offset.
  class TZDataFixedOffsetRules < TZDataRules #:nodoc:
    attr_reader :offset
    
    def initialize(offset)
      super(offset.to_s)
      @offset = offset
    end
    
    # Writes a single period to the file with the fixed offset. Returns the
    # end of the period in UTC and the offset.
    def write_class_periods(file, utc_start, period, last_utc_offset, std_offset)
      result = period.valid_until.nil? ? nil : 
        period.valid_until.to_utc(period.utc_offset, @offset)
      
      write_period(file, utc_start, result, period, @offset, nil)
      
      [result, @offset]
    end
  end
  
  # An empty set of rules.
  class TZDataNoRules < TZDataRules #:nodoc:
    def initialize
      super('-')
    end
    
    # Writes a single period to the file with a zero daylight savings offset.
    def write_class_periods(file, utc_start, period, last_utc_offset, std_offset)
      # no rules to apply, just take the end of the period and convert to
      # utc according to the zone offset
      
      result = period.valid_until.nil? ? nil : 
        period.valid_until.to_utc(period.utc_offset, TZDataOffset.zero)
      
      write_period(file, utc_start, result, period, TZDataOffset.zero, nil)
      
      [result, TZDataOffset.zero]
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
    
    # Finds all the periods between utc_start and period.valid_until and writes
    # them to file. Returns the end of the period and the final std_offset.
    #
    # This is where almost all the time is currently spent running the import.
    def write_class_periods(file, utc_start, period, last_utc_offset, std_offset)
      # search the rule space between utc_start and period.valid_until 
      # (both can be nil = unbounded)
      # For simplicity treat unbounded ends as fixed dates. This is not too bad
      # as there wasn't daylight savings before 1900 and the rules will change
      # in the future.
      
      # divide the time up into periods with the same std_offset
      # need to keep finding the earliest rule after utc_start and before period.valid_until      
      #puts name
      
      utc_current = utc_start.nil? ? DateTime.new(1850, 1, 1, 0, 0, 0) : utc_start
      
      unbounded_end = period.valid_until.nil?
      if unbounded_end
        utc_end = DateTime.now + 14600
      else
        utc_end = period.valid_until.to_utc(period.utc_offset, std_offset)
      end        
      
      #puts "utc_end: #{utc_end}"
      
      first = true
      letter = nil
      
      if last_utc_offset != period.utc_offset
        # change of offset
        # need to check if there is a wallclock time transition right at the start
        # of the period using the _last_ utc offset (see Asia/Qyzylorda Apr 1 1982)
        
        #puts "checking last_utc_offset #{last_utc_offset.inspect}"
        
        earliest = earliest_in_bounds(utc_current, utc_end, last_utc_offset, std_offset)
        
        if !earliest.nil? && earliest[1] == utc_current
          # found the transition
          # no period to write here, just update the std_offset          
          rule = earliest[0]
          std_offset = rule.save
          letter = rule.letter
          first = false
        end
      end
      
      # Main loop. Repeatedly find earliest rule to apply.      
      while utc_current < utc_end
        #puts "utc_current: #{utc_current}"
        
        earliest = earliest_in_bounds(utc_current, utc_end, period.utc_offset, std_offset)
        
        if earliest.nil?
          #puts 'found no earliest rule'
          write_period(file, utc_current, unbounded_end ? nil : utc_end, period, std_offset, letter)
          
          [utc_end, std_offset]
          break
        else
          write_period(file, utc_current, earliest[1], period, std_offset, letter) if !first || earliest[1] > utc_current          
          
          raise 'Not moved forwards' if !first and earliest[1] <= utc_current
          first = false if first
          
          rule = earliest[0]
          utc_current = earliest[1]
          std_offset = rule.save
          letter = rule.letter
          
          if !unbounded_end
            utc_end = period.valid_until.to_utc(period.utc_offset, std_offset)
          end
        end
      end
      
      [utc_end, std_offset]
    end
    
    # Finds the earliest rule that applies at of after utc_start and before
    # utc_end that has a different std_offset to the current std_offset.
    def earliest_in_bounds(utc_start, utc_end, utc_offset, std_offset)
      earliest_utc = nil
      earliest_rule = nil
      @rules.each {|rule|
        # only consider rules that change the offset
        if rule.save.to_seconds != std_offset.to_seconds      
          test = rule.earliest_in_bounds(utc_start, utc_end, utc_offset, std_offset)
          
          if !test.nil? && (earliest_utc.nil? || test < earliest_utc)
            earliest_utc = test
            earliest_rule = rule
          end
        end
      }
      
      if earliest_rule.nil?
        nil
      else
        [earliest_rule, earliest_utc]
      end
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
      
      # get rid of to only
      raise 'to cannot be only if from is minimum' if @to == :only && @from == :min
      @to = @from if @to == :only
      
      @type = parse_type(type)
      @in_month = TZDataParser.parse_month(in_month)
      @on_day = TZDataDayOfMonth.new(on_day)
      @at_time = TZDataTime.new(at_time)
      @save = TZDataOffset.new(save)
      @letter = parse_letter(letter)
    end
    
    # Gets the earliest UTC time this rule can be applied that is greater than
    # or equal to utc_start and before utc_end.
    def earliest_in_bounds(utc_start, utc_end, utc_offset, std_offset) 
      earliest = earliest_start_date(utc_start, utc_offset, std_offset)
      if !earliest.nil? && earliest < utc_end
        earliest
      else
        nil
      end
    end
    
    # Gets the earliest UTC time this rule can be applied that is greater than
    # or equal to utc_start.
    def earliest_start_date(utc_now, utc_offset, std_offset)
      #puts "testing rule #{@from}-#{@to}"      
      
      # convert the utc definition to whatever reference this rule is in terms of
      
      if @at_time.ref == :standard        
        rule_now = utc_now + Rational(utc_offset.to_seconds, 86400)        
        #puts "converted utc to standard: #{rule_now}"
      elsif @at_time.ref == :wall_clock
        rule_now = utc_now + Rational(utc_offset.to_seconds + std_offset.to_seconds, 86400)
        #puts "converted utc to wall clock: #{rule_now}"
      else
        rule_now = utc_now
      end
                  
      if @to == :max || @to >= rule_now.year
      
        next_year = false
        
        if @in_month > rule_now.mon
          #puts 'month greater'                            
        elsif @in_month < rule_now.mon
          #puts 'month less'
          next_year = true          
        else          
          # work out the complete time as this may move the day back/forward
          abs_day = @on_day.to_absolute(rule_now.year, @in_month)          
          #puts "months equal #{abs_day}"
          
          if abs_day > rule_now.mday                        
          elsif abs_day < rule_now.mday            
            next_year = true
          else
            if @at_time.hour > rule_now.hour              
            elsif @at_time.hour < rule_now.hour              
            else
              if @at_time.minute > rule_now.min                
              elsif @at_time.minute < rule_now.min                
                next_year = true
              else
                if @at_time.second >= rule_now.sec                                  
                else                  
                  next_year = true
                end
              end
            end                        
          end
        end        
        
        if @from == :min
          year = rule_now.year
        else
          if @from > rule_now.year
            year = @from
          else
            year = rule_now.year
          end
        end
        
        if next_year && year == rule_now.year
          year = year + 1
        end
        
        if @to == :max || @to >= year
          @at_time.to_utc(utc_offset, std_offset, year, @in_month, @on_day.to_absolute(year, @in_month))
        else
          nil
        end
      else
        nil
      end
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
    attr_reader :name_for_class
    
    def initialize(name)
      @name = name
      
      # + and - aren't allowed in class names
      @name_for_class = name.gsub(/-/, '__m__').gsub(/\+/, '__p__')
    end        
    
    # Creates necessary directories, the file, writes the class header and footer
    # and yields to a block to write the content.    
    def create_file(output_dir)      
      modules = @name_for_class.split(/\//)
      class_name = modules.pop            
      dir = output_dir + File::SEPARATOR + 'definitions' + File::SEPARATOR + modules.join(File::SEPARATOR)      
      FileUtils.mkdir_p(dir)
      
      File.open(output_dir + File::SEPARATOR + 'definitions' + File::SEPARATOR + @name_for_class.gsub(/\//, File::SEPARATOR) + '.rb', 'w') {|file|
        write_requires(file)        
        file.puts('module TZInfo')
        file.puts('module Definitions #:nodoc:')
        modules.each do |part| 
          file.puts("module #{part} #:nodoc:")
        end
        
        file.puts("class #{class_name} < #{superclass} #:nodoc:")
      
        yield file
        
        #file.puts('@@instance = new')
        #file.puts('def self.instance')
        #file.puts('   @@instance')
        #file.puts('end')        
        
        file.puts('end') # end class
        
        modules.each do
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
      file.puts("require 'tzinfo/definitions/#{link_to.name_for_class}'")
    end
    
    # Superclass of this class (the class we are linking to).
    def superclass
      'Definitions::' + link_to.name_for_class.gsub(/\//, '::')
    end
    
    # Writes a class for this link.
    def write_class(output_dir)
      puts "writing link #{name}"
      
      create_file(output_dir) {|file|
        file.puts("set_identifier('#{@name.gsub(/'/, '\\\'')}')")
      }
    end
  end
  
  # A tz data Zone. Each line from the tz data is loaded as a TZDataPeriod.
  class TZDataZone < TZDataDefinition #:nodoc:    
    attr_reader :periods
    
    def initialize(name)
      super
      @periods = []
    end
    
    def add_period(period)      
      @periods << period
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
        
        utc_start = nil
        std_offset = TZDataOffset.zero
        last_utc_offset = nil
        
        @periods.each {|period|
          last_utc_offset = period.utc_offset if last_utc_offset.nil?
          result = period.write_class_periods(file, utc_start, last_utc_offset, std_offset)
          utc_start = result[0]
          std_offset = result[1]
          last_utc_offset = period.utc_offset
        }                                
      }      
    end
  end
  
  # A period within a zone.
  class TZDataPeriod #:nodoc:
    attr_reader :utc_offset
    attr_reader :rule_set
    attr_reader :format
    attr_reader :valid_until
    
    def initialize(utc_offset, rule_set, format, valid_until)
      @utc_offset = TZDataOffset.new(utc_offset)
      @rule_set = rule_set      
      @format = TZDataFormat.new(format)
      @valid_until = valid_until.nil? ? nil : TZDataUntil.new(valid_until)      
    end
    
    # Writes the definition of this period to the file. Calls the rule_set to
    # do this.
    def write_class_periods(file, utc_start, last_utc_offset, std_offset)
      @rule_set.write_class_periods(file, utc_start, self, last_utc_offset, std_offset)
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
      offset = offset + utc_offset.to_seconds if @ref == :standard || @ref == :wall_clock            
      offset = offset + std_offset.to_seconds if @ref == :wall_clock       
      result - Rational(offset, 86400)            
    end
  end
  
  # A tz data offset.
  class TZDataOffset #:nodoc:     
    attr_reader :hour
    attr_reader :minute
    attr_reader :second    
        
    def initialize(spec)
      raise "Invalid time: #{spec}" if spec !~ /^(-)?([0-9]+)(:([0-9]+)(:([0-9]+))?)?$/

      @negative = !$1.nil?      
      @hour = $2.to_i
      @minute = $4.nil? ? 0 : $4.to_i
      @second = $6.nil? ? 0 : $6.to_i            
    end
    
    @@zero = TZDataOffset.new('0')
    
    # A TZDataOffset representing 0.
    def self.zero
      @@zero
    end
        
    def negative?
      @negative
    end
    
    def to_s
      "#{@negative ? '-' : ''}#{@hour}:#{@minute}:#{@second}"
    end
    
    # Converts the offset to seconds.
    def to_seconds
      result = @hour
      result = result * 60
      result = result + @minute
      result = result * 60
      result = result + @second
      result = -result if @negative
      result
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
  
  # A tz data Zone format string. Either alternate standard/daylight-savings
  # or substitution (%s) format.
  class TZDataFormat #:nodoc:        
    def initialize(spec)
      if spec =~ /([A-z]+)\/([A-z]+)/
        @type = :alternate
        @standard_abbrev = $1
        @daylight_abbrev = $2
      else
        @type = :subst
        @abbrev = spec
      end
    end
    
    # Expands given the current daylight savings offset and Rule string.
    def expand(std_offset, rule_string)
      if @type == :alternate
        if std_offset.to_seconds == 0
          @standard_abbrev
        else
          @daylight_abbrev
        end
      else
        sprintf(@abbrev, rule_string)
      end        
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
