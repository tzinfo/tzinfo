#--
# Copyright (c) 2012-2013 Philip Ross
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

module TZInfo
  # An InvalidZoneinfoDirectory exception is raised if the DataSource is
  # set to a specific zoneinfo path, which is not a valid zoneinfo directory
  # (i.e. a directory containing index files named iso3166.tab and zone.tab
  # as well as other timezone files).
  class InvalidZoneinfoDirectory < StandardError
  end
  
  # A ZoneinfoDirectoryNotFound exception is raised if no valid zoneinfo 
  # directory could be found when checking the paths listed in
  # ZoneinfoDataSource.search_paths. A valid zoneinfo directory is one that
  # contains index files named iso3166.tab and zone.tab as well as other 
  # timezone files).
  class ZoneinfoDirectoryNotFound < StandardError
  end
  
  # A DataSource that loads data from a 'zoneinfo' directory containing
  # compiled "TZif" version 2 (or earlier) files in addition to zones.tab 
  # and iso3166.tab index files.
  #
  # To have TZInfo load the system zoneinfo files, call TZInfo::DataSource.set 
  # as follows:
  #
  #   TZInfo::DataSource.set(:zoneinfo)
  #
  # To load zoneinfo files from a particular directory, pass the directory to 
  # TZInfo::DataSource.set:
  #
  #   TZInfo::DataSource.set(:zoneinfo, directory)  
  class ZoneinfoDataSource < DataSource
    # The default value ZoneInfoDataSource.search_paths.
    DEFAULT_SEARCH_PATHS = ['/usr/share/zoneinfo', '/usr/share/lib/zoneinfo', '/etc/zoneinfo'].freeze
    
    # Paths to be checked to find the system zoneinfo directory.
    @@search_paths = DEFAULT_SEARCH_PATHS.dup
    
    # An array of paths that will be checked to find the system zoneinfo
    # directory. The returned array can be modified to adjust the 
    # searched paths.
    #
    # The default value is ['/usr/share/zoneinfo', '/usr/share/lib/zoneinfo', '/etc/zoneinfo'].
    def self.search_paths
      @@search_paths
    end
    
    # Sets the paths to be checked to find the system zoneinfo directory.
    #
    # Set to nil to revert back to the default paths.
    def self.search_paths=(search_paths)
      if search_paths
        @@search_paths = search_paths
      else
        @@search_paths = DEFAULT_SEARCH_PATHS.dup
      end
    end
    
    # The zoneinfo directory being used.
    attr_reader :zoneinfo_dir
    
    # Creates a new ZoneinfoDataSource.
    #
    # If zoneinfo_dir is specified, it will be checked and used as the source
    # of zoneinfo files. If the directory does not contain zone.tab and 
    # iso3166.tab files, InvalidZoneinfoDirectory will be raised.
    # 
    # If zoneinfo_dir is not specified or nil, the paths referenced in
    # search_paths are searched to find a valid zoneinfo directory (containing
    # zone.tab and iso3166.tab files). If no valid zoneinfo directory is found
    # ZoneinfoDirectoryNotFound will be raised.
    def initialize(zoneinfo_dir = nil)
      if zoneinfo_dir
        unless valid_zoneinfo_dir?(zoneinfo_dir)
          raise InvalidZoneinfoDirectory, "#{zoneinfo_dir} is not a directory or doesn't contain iso3166.tab and zone.tab files." 
        end
        @zoneinfo_dir = zoneinfo_dir
      else
        @zoneinfo_dir = self.class.search_paths.detect do |path|
          valid_zoneinfo_dir?(path)
        end
        
        unless @zoneinfo_dir
          raise ZoneinfoDirectoryNotFound, "None of the paths included in TZInfo::ZoneinfoDataSource.search_paths are valid zoneinfo directories."
        end
      end
      
      @zoneinfo_dir = File.expand_path(@zoneinfo_dir).freeze
      @zoneinfo_prefix = (@zoneinfo_dir + File::SEPARATOR).freeze
    end
    
    # Returns a TimezoneInfo instance for a given identifier. 
    # Raises InvalidTimezoneIdentifier if the timezone is not found or the 
    # identifier is invalid.
    def load_timezone_info(identifier)
      load_timezone_index
      
      begin
        if @timezone_index.include?(identifier)
          identifier.untaint
          path = File.join(@zoneinfo_dir, identifier)
          
          begin
            ZoneinfoTimezoneInfo.new(identifier, path)
          rescue InvalidZoneinfoFile => e
            raise InvalidTimezoneIdentifier, e.message
          end
        else
          raise InvalidTimezoneIdentifier, 'Invalid identifier'
        end
      rescue Errno::ENOENT, Errno::ENAMETOOLONG, Errno::ENOTDIR
        raise InvalidTimezoneIdentifier, 'Invalid identifier'
      rescue Errno::EACCES => e
        raise InvalidTimezoneIdentifier, e.message
      end
    end    
    
    # Returns an array of all the available timezone identifiers.
    def timezone_identifiers
      load_timezone_index
      @timezone_index
    end
    
    # Returns an array of all the available timezone identifiers for
    # data timezones (i.e. those that actually contain definitions).
    #
    # For ZoneinfoDataSource, this will always be identical to 
    # timezone_identifers.
    def data_timezone_identifiers
      load_timezone_index
      @timezone_index
    end
    
    # Returns an array of all the available timezone identifiers that
    # are links to other timezones.
    #
    # For ZoneinfoDataSource, this will always be an empty array.
    def linked_timezone_identifiers
      [].freeze
    end
    
    # Returns a CountryInfo instance for the given ISO 3166-1 alpha-2
    # country code. Raises InvalidCountryCode if the country could not be found
    # or the code is invalid.
    def load_country_info(code)
      load_country_index
      info = @country_index[code]
      raise InvalidCountryCode.new, 'Invalid country code' unless info
      info
    end
    
    # Returns an array of all the available ISO 3166-1 alpha-2
    # country codes.
    def country_codes
      load_country_index
      @country_index.keys.freeze
    end
    
    # Returns the name and information about this DataSource.
    def to_s
      "Zoneinfo DataSource: #{@zoneinfo_dir}"
    end
    
    # Returns internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}: #{@zoneinfo_dir}>"
    end    
    
    private
    
    # Tests whether a path represents a valid zoneinfo directory (i.e.
    # is a directory and contains zone.tab and iso3166.tab files).
    def valid_zoneinfo_dir?(path)
      File.directory?(path) && File.file?(File.join(path, 'zone.tab')) && File.file?(File.join(path, 'iso3166.tab'))
    end
       
    # Unless called before, scans @zoneinfo_dir looking for all the data
    # and linked zones.
    def load_timezone_index
      unless @timezone_index
        index = []
        
        enum_timezones(nil, ['localtime', 'posix', 'posixrules', 'right', 'Factory']) do |identifier|
          index << identifier
        end
        
        @timezone_index = index.sort.freeze
      end
    end
    
    # Recursively scans a directory of timezones, populating data_identifiers
    # and linked_timezones.
    def enum_timezones(dir, exclude = [], &block)
      Dir.foreach(dir ? File.join(@zoneinfo_dir, dir) : @zoneinfo_dir) do |entry|
        unless entry =~ /\./ || exclude.include?(entry)
          entry.untaint
          path = dir ? File.join(dir, entry) : entry
          full_path = File.join(@zoneinfo_dir, path)
 
          if File.directory?(full_path)
            enum_timezones(path, [], &block)
          elsif File.file?(full_path)
            yield path
          end
        end
      end
    end
    
    # Unless called before, uses the iso3166.tab and zone.tab files to build
    # an index of the available countries and their timezones.
    def load_country_index
      unless @country_index
        zones = {}
        
        File.open(File.join(@zoneinfo_dir, 'zone.tab')) do |file|
          file.each_line do |line|
            line.chomp!
            
            if line =~ /\A([A-Z]{2})\t(?:([+\-])(\d{2})(\d{2})([+\-])(\d{3})(\d{2})|([+\-])(\d{2})(\d{2})(\d{2})([+\-])(\d{3})(\d{2})(\d{2}))\t([^\t]+)(?:\t([^\t]+))?\z/
              code = $1
              
              if $2
                latitude = dms_to_rational($2, $3, $4)
                longitude = dms_to_rational($5, $6, $7)
              else
                latitude = dms_to_rational($8, $9, $10, $11)
                longitude = dms_to_rational($12, $13, $14, $15)
              end
              
              zone_identifier = $16
              description = $17
              
              (zones[code] ||= []) << CountryZoneDefinition.new(zone_identifier, latitude, longitude, description)
            end
          end
        end
        
        countries = {}
        
        File.open(File.join(@zoneinfo_dir, 'iso3166.tab')) do |file|
          file.each_line do |line|
            line.chomp!
            
            if line =~ /\A([A-Z]{2})\t(.+)\z/
              code = $1
              name = $2
              countries[code] = CountryInfo.new(code, name, true) do |ci|
                (zones[code] || []).each do |zone|
                  ci.timezone(zone.identifier, 
                    zone.latitude.numerator, zone.latitude.denominator,
                    zone.longitude.numerator, zone.longitude.denominator,
                    zone.description)
                end
              end
            end
          end
        end
        
        @country_index = countries
      end
    end
    
    # Converts degrees, miunutes and seconds to a Rational
    def dms_to_rational(sign, degrees, minutes, seconds = nil)
      result = degrees.to_i + Rational(minutes.to_i, 60)
      result += Rational(seconds.to_i, 3600) if seconds
      result = -result if sign == '-'
      result
    end
    
    # A struct used when reading the zone.tab file.
    CountryZoneDefinition = Struct.new(:identifier, :latitude, :longitude, :description)
  end
end
