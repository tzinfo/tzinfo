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
  # Exception raised if the DataSource is used doesn't implement one of the
  # required methods.
  class InvalidDataSource < StandardError
  end
  
  # Exception raised if no data source could be found (i.e. 'tzinfo/data'
  # cannot be found on the load path and no valid zoneinfo directory can be 
  # found on the system).
  class DataSourceNotFound < StandardError
  end

  # The base class for data sources of timezone and country data.
  #
  # Use DataSource.set to change the data source being used.
  class DataSource
    # The currently selected data source.
    @@instance = nil
        
    # Returns the currently selected DataSource instance.
    def self.get
      set(create_default_data_source) unless @@instance
      @@instance
    end
    
    # Sets the currently selected data source for Timezone and Country data.
    #
    # This should usually be set to one of the two standard data source types:
    #
    # * +:ruby+ - read data from the Ruby modules included in the TZInfo::Data 
    #   library (tzinfo-data gem).
    # * +:zoneinfo+ - read data from the zoneinfo files included with most
    #   Unix-like operating sytems (e.g. in /usr/share/zoneinfo).
    #
    # To set TZInfo to use one of the standard data source types, call
    # \TZInfo::DataSource.set in one of the following ways:
    #
    #   TZInfo::DataSource.set(:ruby)
    #   TZInfo::DataSource.set(:zoneinfo)
    #   TZInfo::DataSource.set(:zoneinfo, zoneinfo_dir)
    #
    # \DataSource.set(:zoneinfo) will automatically search for the zoneinfo
    # directory by checking the paths specified in 
    # ZoneinfoDataSource.search_paths. ZoneinfoDirectoryNotFound will be raised
    # if no valid zoneinfo directory could be found.
    #
    # \DataSource.set(:zoneinfo, zoneinfo_dir) uses the specified zoneinfo
    # directory as the data source. If the directory is not a valid zoneinfo
    # directory, an InvalidZoneinfoDirectory exception will be raised.
    #
    # You can create your own custom data source class. It must extend from
    # TZInfo::DataSource and implement the following methods:
    #
    # * \load_timezone_info
    # * \timezone_identifiers
    # * \data_timezone_identifiers
    # * \linked_timezone_identifiers
    # * \load_country_info
    # * \country_codes
    #
    # To make TZInfo use your data source, call \DataSource.set as follows:
    #
    #   TZInfo::DataSource.set(MyDataSource.new)
    #
    # To avoid inconsistent data, if \DataSource.set is used, it should be 
    # called before accessing any Timezone or Country data.
    #
    # If \DataSource.set is not called, the included Ruby data modules will be
    # used as a data source.
    def self.set(data_source_or_type, *args)
      if data_source_or_type.kind_of?(DataSource)
        @@instance = data_source_or_type
      elsif data_source_or_type == :ruby
        @@instance = RubyDataSource.new
      elsif data_source_or_type == :zoneinfo
        raise ArgumentError, "wrong number of arguments #{args.length} for 1" if args.length > 1
        @@instance = ZoneinfoDataSource.new(*args)
      else
        raise ArgumentError, 'data_source_or_type must be a DataSource instance or a data source type (:ruby)'
      end
    end
    
    # Returns a TimezoneInfo instance for a given identifier. 
    # Raises InvalidTimezoneIdentifier if the timezone is not found or the 
    # identifier is invalid.
    def load_timezone_info(identifier)
      raise InvalidDataSource, 'load_timezone_info not defined'
    end
    
    # Returns an array of all the available timezone identifiers.
    def timezone_identifiers
      raise InvalidDataSource, 'timezone_identifiers not defined'
    end
    
    # Returns an array of all the available timezone identifiers for
    # data timezones (i.e. those that actually contain definitions).
    def data_timezone_identifiers
      raise InvalidDataSource, 'data_timezone_identifiers not defined'
    end
    
    # Returns an array of all the available timezone identifiers that
    # are links to other timezones.
    def linked_timezone_identifiers
      raise InvalidDataSource, 'linked_timezone_identifiers not defined'
    end
    
    # Returns a CountryInfo instance for the given ISO 3166-1 alpha-2
    # country code. Raises InvalidCountryCode if the country could not be found
    # or the code is invalid.
    def load_country_info(code)
      raise InvalidDataSource, 'load_country_info not defined'
    end
    
    # Returns an array of all the available ISO 3166-1 alpha-2
    # country codes.
    def country_codes
      raise InvalidDataSource, 'country_codes not defined'
    end
    
    # Returns the name of this DataSource.
    def to_s
      "Default DataSource"
    end
    
    # Returns internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}>"
    end
    
    private
    
    # Creates a DataSource instance for use as the default. Used if
    # no preference has been specified manually.
    def self.create_default_data_source
      has_tzinfo_data = false
      
      begin
        require 'tzinfo/data'
        has_tzinfo_data = true
      rescue LoadError
      end
    
      return RubyDataSource.new if has_tzinfo_data
      
      begin
        return ZoneinfoDataSource.new
      rescue ZoneinfoDirectoryNotFound
        raise DataSourceNotFound, 'No data source could be found. Either install tzinfo-data or specify the location to your zoneinfo files with TZInfo::ZoneinfoDataSource.search_paths='
      end
    end
  end
end
