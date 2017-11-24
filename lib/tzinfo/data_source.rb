# frozen_string_literal: true

require 'concurrent/map'
require 'thread'

module TZInfo
  # InvalidDataSource is raised if the DataSource is used doesn't implement one
  # of the required methods.
  class InvalidDataSource < StandardError
  end

  # DataSourceNotFound is raised if no data source could be found (i.e.
  # if 'tzinfo/data' cannot be found on the load path and no valid zoneinfo
  # directory can be found on the system).
  class DataSourceNotFound < StandardError
  end

  # The base class for data sources of timezone and country data.
  #
  # Use DataSource.set to change the data source being used.
  class DataSource
    # The currently selected data source.
    @@instance = nil

    # Mutex used to ensure the default data source is only created once.
    @@default_mutex = Mutex.new

    # Returns the currently selected DataSource instance.
    def self.get
      # If a DataSource hasn't been manually set when the first request is
      # made to obtain a DataSource, then a Default data source is created.

      # This is done at the first request rather than when TZInfo is loaded to
      # avoid unnecessary (or in some cases potentially harmful) attempts to
      # find a suitable DataSource.

      # A Mutex is used to ensure that only a single default instance is
      # created (having two different DataSources in use simultaneously could
      # cause unexpected results).

      unless @@instance
        @@default_mutex.synchronize do
          set(create_default_data_source) unless @@instance
        end
      end

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
    #   TZInfo::DataSource.set(:zoneinfo, zoneinfo_dir, iso3166_tab_file)
    #
    # \DataSource.set(:zoneinfo) will automatically search for the zoneinfo
    # directory by checking the paths specified in
    # DataSources::ZoneinfoDataSource.search_paths.
    # DataSources::ZoneinfoDirectoryNotFound will be raised if no valid zoneinfo
    # directory could be found.
    #
    # \DataSource.set(:zoneinfo, zoneinfo_dir) uses the specified zoneinfo
    # directory as the data source. If the directory is not a valid zoneinfo
    # directory, an InvalidZoneinfoDirectory exception will be raised.
    #
    # \DataSource.set(:zoneinfo, zoneinfo_dir, iso3166_tab_file) uses the
    # specified zoneinfo directory as the data source, but loads the iso3166.tab
    # file from an alternate path. If the directory is not a valid zoneinfo
    # directory, an InvalidZoneinfoDirectory exception will be raised.
    #
    # Custom data sources can be created by subclassing TZInfo::DataSource and
    # implementing the following methods:
    #
    # * \load_timezone_info
    # * \data_timezone_identifiers
    # * \linked_timezone_identifiers
    # * \load_country_info
    # * \country_codes
    #
    # To have TZInfo use the custom data source, call \DataSource.set as
    # follows:
    #
    #   TZInfo::DataSource.set(CustomDataSource.new)
    #
    # To avoid inconsistent data, \DataSource.set should be called before
    # accessing any Timezone or Country data.
    #
    # If \DataSource.set is not called, TZInfo will by default use TZInfo::Data
    # as the data source. If TZInfo::Data is not available (i.e. if require
    # 'tzinfo/data' fails), then TZInfo will search for a zoneinfo directory
    # instead (using the search path specified by
    # TZInfo::DataSources::ZoneinfoDataSource::DEFAULT_SEARCH_PATH).
    def self.set(data_source_or_type, *args)
      if data_source_or_type.kind_of?(DataSource)
        @@instance = data_source_or_type
      elsif data_source_or_type == :ruby
        @@instance = DataSources::RubyDataSource.new
      elsif data_source_or_type == :zoneinfo
        @@instance = DataSources::ZoneinfoDataSource.new(*args)
      else
        raise ArgumentError, 'data_source_or_type must be a DataSource instance or a data source type (:ruby or :zoneinfo)'
      end
    end

    # Creates a new DataSource instance. Typically only called via DataSource
    # subclasses.
    def initialize
      @timezones = Concurrent::Map.new
    end

    # Returns a DataSources::TimezoneInfo instance for a given identifier. The
    # DataSources::TimezoneInfo instance should derive from either
    # DataSources::DataTimezoneInfo for timezones that define their own data or
    # DataSources::LinkedTimezoneInfo for links or aliases to other timezones.
    #
    # get_timezone_info calls load_timezone_info to obtain a
    # DataSources::TimezoneInfo instance. The returned instance is cached and
    # returned in subsequent calls to get_timezone_info for the identifier.
    #
    # Raises InvalidTimezoneIdentifier if the timezone is not found or the
    # identifier is invalid.
    def get_timezone_info(identifier)
      result = @timezones[identifier]

      unless result
        # Thread-safety: It is possible that multiple equivalent TimezoneInfo
        # instances could be created here in concurrently executing threads.
        # The consequences of this are that the data may be loaded more than
        # once (depending on the data source) and memoized calculations could
        # be discarded. The performance benefit of ensuring that only a single
        # instance is created is unlikely to be worth the overhead of only
        # allowing one TimezoneInfo to be loaded at a time.

        result = load_timezone_info(identifier)
        @timezones[result.identifier] = result
      end

      result
    end

    # Returns a frozen array of all the available timezone identifiers. The
    # identifiers are sorted according to String#<=>.
    def timezone_identifiers
      # Thread-safety: It is possible that the value of @timezone_identifiers
      # may be calculated multiple times in concurrently executing threads. It
      # is not worth the overhead of locking to ensure that
      # @timezone_identifiers is only calculated once.
      @timezone_identifiers ||= build_timezone_identifiers
    end

    # Returns a frozen array of all the available timezone identifiers for data
    # timezones (i.e. those that actually contain definitions). The identifiers
    # are sorted according to String#<=>.
    def data_timezone_identifiers
      raise_invalid_data_source('data_timezone_identifiers')
    end

    # Returns a frozen array of all the available timezone identifiers that are
    # links to other timezones. The identifiers are sorted according to
    # String#<=>.
    def linked_timezone_identifiers
      raise_invalid_data_source('linked_timezone_identifiers')
    end

    # Returns a DataSources::CountryInfo instance for the given ISO 3166-1
    # alpha-2 country code. Raises InvalidCountryCode if the country could not
    # be found or the code is invalid.
    #
    # get_country_info calls load_country_info to obtain a CountryInfo instance.
    def get_country_info(code)
      load_country_info(code)
    end

    # Returns a frozen array of all the available ISO 3166-1 alpha-2 country
    # codes. The identifiers are sorted according to String#<=>.
    def country_codes
      raise_invalid_data_source('country_codes')
    end

    # Returns the name of this DataSource.
    def to_s
      "Default DataSource"
    end

    # Returns the internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}>"
    end

    protected

    # Returns a DataSources::TimezoneInfo instance for a given identifier. The
    # DataSources::TimezoneInfo instance should derive from either
    # DataSources::DataTimezoneInfo for timezones that define their own data or
    # DataSources::LinkedTimezoneInfo for links or aliases to other timezones.
    #
    # Raises InvalidTimezoneIdentifier if the timezone is not found or the
    # identifier is invalid.
    def load_timezone_info(identifier)
      raise_invalid_data_source('load_timezone_info')
    end

    # Returns a DataSources::CountryInfo instance for the given ISO 3166-1
    # alpha-2 country code. Raises InvalidCountryCode if the country could not
    # be found or the code is invalid.
    def load_country_info(code)
      raise_invalid_data_source('load_country_info')
    end

    # Checks that the given identifier is a valid timezone identifier (can be
    # found in the timezone_identifiers Array). If the identifier is valid, the
    # String instance representing that identifier from timezone_identifiers is
    # returned. Otherwise an InvalidTimezoneIdentifier exception is raised.
    def validate_timezone_identifier(identifier)
      valid_identifier = find_timezone_identifier(identifier)
      raise InvalidTimezoneIdentifier, "Invalid identifier: #{identifier.nil? ? 'nil' : identifier}" unless valid_identifier
      valid_identifier
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

      return DataSources::RubyDataSource.new if has_tzinfo_data

      begin
        return DataSources::ZoneinfoDataSource.new
      rescue DataSources::ZoneinfoDirectoryNotFound
        raise DataSourceNotFound, "No source of timezone data could be found.\nPlease refer to http://tzinfo.github.io/datasourcenotfound for help resolving this error."
      end
    end

    def raise_invalid_data_source(method_name)
      raise InvalidDataSource, "#{method_name} not defined"
    end

    def build_timezone_identifiers
      data = data_timezone_identifiers
      linked = linked_timezone_identifiers
      linked.empty? ? data : (data + linked).sort!.freeze
    end

    if [].respond_to?(:bsearch)
      # If the given identifier is contained within the timezone_identifiers
      # Array, the String instance representing that identifier from
      # timezone_identifiers is returned. Otherwise, nil is returned.
      #
      # :nocov_no_bsearch:
      def find_timezone_identifier(identifier)
        return nil unless identifier.kind_of?(String)
        result = timezone_identifiers.bsearch {|i| i >= identifier }
        result == identifier ? result : nil
      end
      # :nocov_no_bsearch:
    else
      # If the given identifier is contained within the timezone_identifiers
      # Array, the String instance representing that identifier from
      # timezone_identifiers is returned. Otherwise, nil is returned.
      #
      # :nocov_bsearch:
      def find_timezone_identifier(identifier)
        return nil unless identifier.kind_of?(String)

        identifiers = timezone_identifiers
        low = 0
        high = identifiers.length

        while low < high do
          mid = (low + high).div(2)
          mid_identifier = identifiers[mid]
          cmp = mid_identifier <=> identifier

          return mid_identifier if cmp == 0

          if cmp > 0
            high = mid
          else
            low = mid + 1
          end
        end

        nil
      end
      # :nocov_bsearch:
    end
  end
end
