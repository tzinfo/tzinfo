# frozen_string_literal: true

module TZInfo
  module DataSources
    # A {TZInfoDataNotFound} exception is raised if the tzinfo-data gem could
    # not be found (i.e. `require 'tzinfo/data'` failed) when selecting the Ruby
    # data source.
    class TZInfoDataNotFound < StandardError
    end

    # A DataSource implementation that loads data from the set of Ruby modules
    # included in the tzinfo-data gem.
    #
    # TZInfo will use {RubyDataSource} by default if the tzinfo-data gem
    # is available on the load path. It can also be selected by calling
    # {DataSource.set} as follows:
    #
    #     TZInfo::DataSource.set(:ruby)
    class RubyDataSource < DataSource
      # (see DataSource#country_codes)
      attr_reader :country_codes

      # Initializes a new {RubyDataSource} instance.
      #
      # @raise [TZInfoDataNotFound] if the tzinfo-data gem could not be found
      #   (i.e. `require 'tzinfo/data'` failed).
      def initialize
        super

        begin
          require_data
        rescue LoadError
          raise TZInfoDataNotFound, "The tzinfo-data gem could not be found (require 'tzinfo/data' failed)."
        end

        require_index('timezones')
        require_index('countries')
        @country_codes = Data::Indexes::Countries.countries.keys.sort!.freeze
      end

      # (see DataSource#data_timezone_identifiers)
      def data_timezone_identifiers
        Data::Indexes::Timezones.data_timezones
      end

      # (see DataSource#linked_timezone_identifiers)
      def linked_timezone_identifiers
        Data::Indexes::Timezones.linked_timezones
      end

      # (see DataSource#to_s)
      def to_s
        "Ruby DataSource"
      end

      protected

      # Returns a {TimezoneInfo} instance for the given time zone identifier.
      # The result will either be a {ConstantOffsetDataTimezoneInfo}, a
      # {TransitionsDataTimezoneInfo} or a {LinkedTimezoneInfo} depending on the
      # type of time zone.
      #
      # @param identifier [String] A time zone identifier.
      # @return [TimezoneInfo] a {TimezoneInfo} instance for the given time zone
      #   identifier.
      # @raise [InvalidTimezoneIdentifier] if the time zone is not found or the
      #   identifier is invalid.
      def load_timezone_info(identifier)
        valid_identifier = validate_timezone_identifier(identifier)
        valid_identifier = valid_identifier.gsub(/-/, '__m__').gsub(/\+/, '__p__').split('/')

        begin
          require_definition(valid_identifier)

          m = Data::Definitions
          valid_identifier.each {|part| m = m.const_get(part) }
          m.get
        rescue LoadError, NameError => e
          raise InvalidTimezoneIdentifier, "#{e.message} (loading #{identifier})"
        end
      end

      # (see DataSource#load_country_info)
      def load_country_info(code)
        info = Data::Indexes::Countries.countries[code]
        raise InvalidCountryCode, "Invalid country code: #{code.nil? ? 'nil' : code}" unless info
        info
      end

      private

      # Requires a zone definition by its identifier (split on /).
      #
      # @param identifier [String] a time zone identifier. This must have
      #   already been validated.
      def require_definition(identifier)
        require_data(*(['definitions'] + identifier))
      end

      # Requires an index by its name.
      #
      # @param name [String] an index name.
      def require_index(name)
        require_data(*['indexes', name])
      end

      # Requires a file from tzinfo/data.
      #
      # @param file [Array<String>] a relative path to a file to be required.
      def require_data(*file)
        require File.join('tzinfo', 'data', *file)
      end
    end
  end
end
