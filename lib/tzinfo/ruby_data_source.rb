module TZInfo
  # A DataSource that loads data from the set of Ruby modules included in the
  # TZInfo::Data library (tzinfo-data gem).
  #
  # To have TZInfo use this DataSource, call TZInfo::DataSource.set as follows:
  #
  #   TZInfo::DataSource.set(:ruby)
  class RubyDataSource < DataSource
    # Returns an array of all the available ISO 3166-1 alpha-2 country codes.
    attr_reader :country_codes

    # Creates a new RubyDataSource instance.
    def initialize
      super
      require_index('timezones')
      require_index('countries')
      @country_codes = Data::Indexes::Countries.countries.keys.sort!.freeze
    end

    # Returns an array of all the available timezone identifiers.
    def timezone_identifiers
      Data::Indexes::Timezones.timezones
    end

    # Returns an array of all the available timezone identifiers for
    # data timezones (i.e. those that actually contain definitions).
    def data_timezone_identifiers
      Data::Indexes::Timezones.data_timezones
    end

    # Returns an array of all the available timezone identifiers that
    # are links to other timezones.
    def linked_timezone_identifiers
      Data::Indexes::Timezones.linked_timezones
    end

    # Returns the name of this DataSource.
    def to_s
      "Ruby DataSource"
    end

    protected

    # Returns a TimezoneInfo instance for a given identifier.
    # Raises InvalidTimezoneIdentifier if the timezone is not found or the
    # identifier is invalid.
    def load_timezone_info(identifier)
      raise InvalidTimezoneIdentifier, "Invalid identifier: #{identifier}" unless valid_timezone_identifier?(identifier)

      original_identifier = identifier
      identifier = identifier.gsub(/-/, '__m__').gsub(/\+/, '__p__')

      # Untaint identifier after it has been copied to a new string. We don't
      # want to modify the original identifier. identifier may also be frozen
      # and therefore cannot be untainted.
      identifier.untaint

      identifier = identifier.split('/')
      begin
        require_definition(identifier)

        m = Data::Definitions
        identifier.each {|part|
          m = m.const_get(part)
        }

        m.get
      rescue LoadError, NameError => e
        raise InvalidTimezoneIdentifier, "#{e.message} (loading #{original_identifier})"
      end
    end

    # Returns a CountryInfo instance for the given ISO 3166-1 alpha-2
    # country code. Raises InvalidCountryCode if the country could not be found
    # or the code is invalid.
    def load_country_info(code)
      info = Data::Indexes::Countries.countries[code]
      raise InvalidCountryCode, "Invalid country code: #{code}" unless info
      info
    end

    private

    # Requires a zone definition by its identifier (split on /).
    def require_definition(identifier)
      require_data(*(['definitions'] + identifier))
    end

    # Requires an index by its name.
    def require_index(name)
      require_data(*['indexes', name])
    end

    # Requires a file from tzinfo/data.
    def require_data(*file)
      require File.join('tzinfo', 'data', *file)
    end
  end
end
