require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')

include TZInfo

class TCRubyDataSource < Test::Unit::TestCase
  def setup
    @data_source = RubyDataSource.new
  end
  
  def test_load_timezone_info_data
    info = @data_source.load_timezone_info('Europe/London')
    assert_kind_of(DataTimezoneInfo, info)
    assert_equal('Europe/London', info.identifier)
  end
  
  def test_load_timezone_info_linked
    info = @data_source.load_timezone_info('UTC')
    assert_kind_of(LinkedTimezoneInfo, info)
    assert_equal('UTC', info.identifier)
    assert_equal('Etc/UTC', info.link_to_identifier)
  end
  
  def test_load_timezone_info_does_not_exist
    assert_raises(InvalidTimezoneIdentifier) do
      @data_source.load_timezone_info('Nowhere/Special')
    end
  end
  
  def test_load_timezone_info_invalid
    assert_raises(InvalidTimezoneIdentifier) do
      @data_source.load_timezone_info('../Definitions/UTC')
    end
  end
  
  def test_load_timezone_info_nil
    assert_raises(InvalidTimezoneIdentifier) do
      @data_source.load_timezone_info(nil)
    end
  end
  
  def test_load_timezone_info_case
    assert_raises(InvalidTimezoneIdentifier) do
      @data_source.load_timezone_info('europe/london')
    end
  end

  def test_load_timezone_info_plus
    info = @data_source.load_timezone_info('Etc/GMT+1')
    assert_equal('Etc/GMT+1', info.identifier)
  end
  
  def test_load_timezone_info_minus
    info = @data_source.load_timezone_info('Etc/GMT-1')
    assert_equal('Etc/GMT-1', info.identifier)
  end

  # Disable test in Ruby 1.9. See:
  # http://groups.google.com/group/ruby-talk-google/browse_thread/thread/170a7205555cedfc
  # It doesn't appear to be possible to require a file from the load path in Ruby 1.9.
  if RUBY_VERSION !~ /^1.9/
    def test_load_timezone_info_tainted
      safe_test do
        info = @data_source.load_timezone_info('Europe/Amsterdam'.taint)
        assert_equal('Europe/Amsterdam', info.identifier)
      end
    end
  end
  
  def test_timezone_identifiers
    all = @data_source.timezone_identifiers
    assert_equal(Indexes::Timezones.timezones, all)
    assert_equal(true, all.frozen?)
  end
  
  def test_data_timezone_identifiers
    all_data = @data_source.data_timezone_identifiers
    assert_equal(Indexes::Timezones.data_timezones, all_data)
    assert_equal(true, all_data.frozen?)
  end
  
  def test_linked_timezone_identifiers
    all_linked = @data_source.linked_timezone_identifiers
    assert_equal(Indexes::Timezones.linked_timezones, all_linked)
    assert_equal(true, all_linked.frozen?)
  end
  
  def test_load_country_info
    info = @data_source.load_country_info('GB')
    assert_equal('GB', info.code)
  end
    
  def test_load_country_info_not_exist
    assert_raises(InvalidCountryCode) do
      @data_source.load_country_info('ZZ')
    end
  end
  
  def test_load_country_info_invalid
    assert_raises(InvalidCountryCode) do
      @data_source.load_country_info('../Countries/GB')
    end
  end
  
  def test_load_country_info_nil
    assert_raises(InvalidCountryCode) do
      @data_source.load_country_info(nil)
    end
  end
  
  def test_load_country_info_case
    assert_raises(InvalidCountryCode) do
      @data_source.load_country_info('gb')
    end
  end
  
  def test_load_country_info_tainted
    safe_test do
      info = @data_source.load_country_info('NL'.taint)
      assert_equal('NL', info.code)
    end
  end
  
  def test_country_codes
    codes = @data_source.country_codes
    assert_equal(Indexes::Countries.countries.keys, codes)
    assert_equal(true, codes.frozen?)
  end
end
