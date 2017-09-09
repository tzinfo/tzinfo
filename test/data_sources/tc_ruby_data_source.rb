require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_utils')

include TZInfo

module DataSources
  class TCRubyDataSource < Minitest::Test
    def setup
      @data_source = RubyDataSource.new
    end

    def test_initialize_not_found
      code = <<-EOF
        begin
          ds = TZInfo::DataSources::RubyDataSource.new
          puts "No exception raised, returned \#{ds} instead"
        rescue Exception => e
          puts e.class
          puts e.message
        end
      EOF

      assert_sub_process_returns([
        'TZInfo::DataSources::TZInfoDataNotFound',
        'TZInfo::Data could not be found (require \'tzinfo/data\' failed).'], code)
    end

    def test_load_timezone_info_data
      info = @data_source.send(:load_timezone_info, 'Europe/London')
      assert_kind_of(DataTimezoneInfo, info)
      assert_equal('Europe/London', info.identifier)
    end

    def test_load_timezone_info_linked
      info = @data_source.send(:load_timezone_info, 'UTC')
      assert_kind_of(LinkedTimezoneInfo, info)
      assert_equal('UTC', info.identifier)
      assert_equal('Etc/UTC', info.link_to_identifier)
    end

    def test_load_timezone_info_does_not_exist
      error = assert_raises(InvalidTimezoneIdentifier) do
        @data_source.send(:load_timezone_info, 'Nowhere/Special')
      end

      assert_match(/\bNowhere\/Special\b/, error.message)
    end

    def test_load_timezone_info_invalid
      error = assert_raises(InvalidTimezoneIdentifier) do
        @data_source.send(:load_timezone_info, '../Definitions/UTC')
      end

      assert_match(/\W\.\.\/Definitions\/UTC\b/, error.message)
    end

    def test_load_timezone_info_nil
      assert_raises(InvalidTimezoneIdentifier) do
        @data_source.send(:load_timezone_info, nil)
      end
    end

    def test_load_timezone_info_case
      error = assert_raises(InvalidTimezoneIdentifier) do
        @data_source.send(:load_timezone_info, 'europe/london')
      end

      assert_match(/\beurope\/london\b/, error.message)
    end

    def test_load_timezone_info_plus
      info = @data_source.send(:load_timezone_info, 'Etc/GMT+1')
      assert_equal('Etc/GMT+1', info.identifier)
    end

    def test_load_timezone_info_minus
      info = @data_source.send(:load_timezone_info, 'Etc/GMT-1')
      assert_equal('Etc/GMT-1', info.identifier)
    end

    def test_load_timezone_info_tainted
      safe_test do
        identifier = 'Europe/Amsterdam'.dup.taint
        assert(identifier.tainted?)
        info = @data_source.send(:load_timezone_info, identifier)
        assert_equal('Europe/Amsterdam', info.identifier)
        assert(identifier.tainted?)
      end
    end

    def test_load_timezone_info_tainted_and_frozen
      safe_test do
        info = @data_source.send(:load_timezone_info, 'Europe/Amsterdam'.dup.taint.freeze)
        assert_equal('Europe/Amsterdam', info.identifier)
      end
    end

    def test_load_timezone_info_returned_identifier_frozen
      info = @data_source.send(:load_timezone_info, 'Europe/London')
      assert(info.identifier.frozen?)
    end

    def test_load_timezone_info_parameter_remains_unfrozen
      identifier = 'Europe/London'.dup
      info = @data_source.send(:load_timezone_info, identifier)
      assert_equal('Europe/London', info.identifier)
      refute_same(identifier, info.identifier)
      assert(!identifier.frozen?)
    end

    def test_get_timezone_info
      info = @data_source.get_timezone_info('Europe/London')
      assert_equal('Europe/London', info.identifier)
    end

    def test_timezone_identifiers
      all = @data_source.timezone_identifiers
      assert_same(TZInfo::Data::Indexes::Timezones.timezones, all)
      assert(all.frozen?)
      assert(all.all?(&:frozen?))
    end

    def test_data_timezone_identifiers
      all_data = @data_source.data_timezone_identifiers
      assert_same(TZInfo::Data::Indexes::Timezones.data_timezones, all_data)
      assert(all_data.frozen?)
      assert(all_data.all?(&:frozen?))
    end

    def test_linked_timezone_identifiers
      all_linked = @data_source.linked_timezone_identifiers
      assert_same(TZInfo::Data::Indexes::Timezones.linked_timezones, all_linked)
      assert(all_linked.frozen?)
      assert(all_linked.all?(&:frozen?))
    end

    def test_load_country_info
      info = @data_source.send(:load_country_info, 'GB')
      assert_equal('GB', info.code)
    end

    def test_load_country_info_not_exist
      error = assert_raises(InvalidCountryCode) do
        @data_source.send(:load_country_info, 'ZZ')
      end

      assert_match(/\bZZ\b/, error.message)
    end

    def test_load_country_info_invalid
      error = assert_raises(InvalidCountryCode) do
        @data_source.send(:load_country_info, '../Countries/GB')
      end

      assert_match(/\W\.\.\/Countries\/GB\b/, error.message)
    end

    def test_load_country_info_nil
      assert_raises(InvalidCountryCode) do
        @data_source.send(:load_country_info, nil)
      end
    end

    def test_load_country_info_case
      error = assert_raises(InvalidCountryCode) do
        @data_source.send(:load_country_info, 'gb')
      end

      assert_match(/\bgb\b/, error.message)
    end

    def test_load_country_info_tainted
      safe_test do
        code = 'NL'.dup.taint
        assert(code.tainted?)
        info = @data_source.send(:load_country_info, code)
        assert_equal('NL', info.code)
        assert(code.tainted?)
      end
    end

    def test_load_country_info_tainted_and_frozen
      safe_test do
        info = @data_source.send(:load_country_info, 'NL'.dup.taint.freeze)
        assert_equal('NL', info.code)
      end
    end

    def test_load_country_info_returned_strings_frozen
      info = @data_source.send(:load_country_info, 'US')
      assert(info.code.frozen?)
      assert(info.name.frozen?)
      assert(info.zones.map(&:identifier).all?(&:frozen?))
      assert(info.zones.map(&:description).all?(&:frozen?))
    end

    def test_get_country_info
      info = @data_source.get_country_info('GB')
      assert_equal('GB', info.code)
    end

    def test_country_codes
      codes = @data_source.country_codes
      assert_equal(TZInfo::Data::Indexes::Countries.countries.keys.sort, codes)
      assert(codes.frozen?)
      assert(codes.all?(&:frozen?))
      assert_same(codes, @data_source.country_codes)
    end

    def test_inspect
      assert_equal('#<TZInfo::DataSources::RubyDataSource>', @data_source.inspect)
    end
  end
end
