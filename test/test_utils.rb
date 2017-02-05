TESTS_DIR = File.expand_path(File.dirname(__FILE__)).untaint
TZINFO_LIB_DIR = File.expand_path(File.join(TESTS_DIR, '..', 'lib'))
TZINFO_TEST_DATA_DIR = File.join(TESTS_DIR, 'tzinfo-data')
TZINFO_TEST_ZONEINFO_DIR = File.join(TESTS_DIR, 'zoneinfo')

$:.unshift(TZINFO_LIB_DIR) unless $:.include?(TZINFO_LIB_DIR)

# tzinfo-data contains a cut down copy of tzinfo-data for use in the tests.
# Add it to the load path.
$:.unshift(TZINFO_TEST_DATA_DIR) unless $:.include?(TZINFO_TEST_DATA_DIR)

require 'minitest/autorun'
require 'tzinfo'
require 'date'
require 'fileutils'
require 'rbconfig'

module TestUtils
  ZONEINFO_SYMLINKS = [
    ['localtime', 'America/New_York'],
    ['UTC', 'Etc/UTC']]


  def self.prepare_test_zoneinfo_dir
    ZONEINFO_SYMLINKS.each do |file, target|
      path = File.join(TZINFO_TEST_ZONEINFO_DIR, file)

      File.delete(path) if File.exist?(path)

      begin
        FileUtils.ln_s(target, path)
      rescue NotImplementedError
        target_path = File.join(TZINFO_TEST_ZONEINFO_DIR, target)
        FileUtils.cp(target_path, path)
      end
    end
  end

  # With MRI and Rubinius, a Time constructed with a zero offset will have
  # Time#utc? == false. utc? only returns true for Times explicitly initialized
  # as UTC (e.g with Time.utc). JRuby's Time#utc? returns true when the offset
  # is zero.
  TIME_SUPPORTS_DISTINCT_UTC = !Time.new(2017,1,1,0,0,0,0).utc?

  class TimeTypesHelper
    def supports?(feature)
      self.class.supports?(feature)
    end

    def expected_zero_offset
      # On JRuby Time#utc? is always true when utc_offset is 0 (but not on MRI or Rubinius).
      supports?(:utc) && !supports?(:distinct_utc) ? :utc : 0
    end
  end

  class TimeTypesTimeHelper < TimeTypesHelper
    def self.supports?(feature)
      (feature == :distinct_utc && TIME_SUPPORTS_DISTINCT_UTC) || feature == :utc
    end

    def time(year, month, day, hour, minute, second, sub_second = 0, utc_offset = 0)
      if utc_offset == :utc
        Time.utc(year, month, day, hour, minute, second + sub_second)
      else
        Time.new(year, month, day, hour, minute, second + sub_second, utc_offset)
      end
    end

    def local_time(period, year, month, day, hour, minute, second, sub_second = 0)
      TZInfo::LocalTime.new(year, month, day, hour, minute, second + sub_second, period.utc_total_offset).localize(period)
    end
  end

  class TimeTypesDateTimeHelper < TimeTypesHelper
    def self.supports?(feature)
      false
    end

    def time(year, month, day, hour, minute, second, sub_second = 0, utc_offset = 0)
      utc_offset = 0 if utc_offset == :utc
      DateTime.new(year, month, day, hour, minute, second + sub_second, utc_offset.to_r / 86400)
    end

    def local_time(period, year, month, day, hour, minute, second, sub_second = 0)
      TZInfo::LocalDateTime.new(year, month, day, hour, minute, second + sub_second, period.utc_total_offset_rational).localize(period)
    end
  end

  class TimeTypesTimestampHelper < TimeTypesHelper
    def self.supports?(feature)
      feature == :distinct_utc || feature == :unspecified_offset || feature == :utc
    end

    def time(year, month, day, hour, minute, second, sub_second = 0, utc_offset = nil)
      Timestamp.new(Time.new(year, month, day, hour, minute, second, !utc_offset || utc_offset == :utc ? 0 : utc_offset).to_i, sub_second, utc_offset)
    end

    def local_time(period, year, month, day, hour, minute, second, sub_second = 0)
      LocalTimestamp.new(Time.new(year, month, day, hour, minute, second, period.utc_total_offset).to_i, sub_second, period.utc_total_offset).localize(period)
    end
  end
end

TestUtils.prepare_test_zoneinfo_dir



module Kernel
  # Suppresses any warnings raised in a specified block.
  def without_warnings
    old_verbose = $VERBOSE
    begin
      $VERBOSE = nil
      yield
    ensure
      $-v = old_verbose
    end
  end

  def safe_test(options = {})
    # JRuby and Rubinius us don't support SAFE levels.
    available = !(defined?(RUBY_ENGINE) && %w(jruby rbx).include?(RUBY_ENGINE))

    if available || options[:unavailable] != :skip
      thread = Thread.new do
        orig_diff = Minitest::Assertions.diff

        $SAFE = options[:level] || 1 if available

        # Disable the use of external diff tools during safe mode tests (since
        # safe mode will prevent their use). The initial value is retrieved
        # before activating safe mode because the first time
        # Minitest::Assertions.diff is called, it will attempt to find a diff
        # tool. Finding the diff tool will also fail in safe mode.
        Minitest::Assertions.diff = nil
        begin
          yield
        ensure
          Minitest::Assertions.diff = orig_diff
        end
      end

      thread.join
    end
  end

  def assert_array_same_items(expected, actual, msg = nil)
    full_message = message(msg, '') { diff(expected, actual) }
    condition = (expected.size == actual.size) && (expected - actual == [])
    assert(condition, full_message)
  end

  def assert_sub_process_returns(expected_lines, code, extra_load_path = [], required = ['tzinfo'])
    ruby = File.join(RbConfig::CONFIG['bindir'],
      RbConfig::CONFIG['ruby_install_name'] + RbConfig::CONFIG['EXEEXT'])

    load_path = [TZINFO_LIB_DIR] + extra_load_path

    # If RubyGems is loaded in the current process, then require it in the
    # sub-process, as it may be needed in order to require dependencies.
    if defined?(Gem) && Gem.instance_of?(Module)
      required = ['rubygems'] + required
    end

    if defined?(RUBY_ENGINE) && RUBY_ENGINE == 'rbx'
      # Stop Rubinius from operating as irb.
      args = ' -'
    else
      args = ''
    end

    IO.popen("\"#{ruby}\"#{args}", 'r+') do |process|
      load_path.each do |p|
        process.puts("$:.unshift('#{p.gsub("'", "\\\\'")}')")
      end

      required.each do |r|
        process.puts("require '#{r.gsub("'", "\\\\'")}'")
      end

      process.puts(code)
      process.flush
      process.close_write

      actual_lines = process.readlines
      actual_lines = actual_lines.collect {|l| l.chomp}
      assert_equal(expected_lines, actual_lines)
    end
  end

  def assert_nothing_raised(msg = nil)
    begin
      yield
    rescue => e
      full_message = message(msg) { exception_details(e, 'Exception raised: ') }
      assert(false, full_message)
    end
  end

  def assert_nil_or_equal(expected, actual, msg = nil)
    if expected.nil?
      assert_nil(actual, msg)
    else
      assert_equal(expected, actual, msg)
    end
  end

  def assert_equal_with_offset(expected, actual)
    assert_kind_of(expected.class, actual)
    assert_equal(expected, actual)

    # Time, DateTime and Timestamp don't require identical offsets for equality.
    # Test the offsets explicitly.
    if expected.respond_to?(:utc_offset)
      assert_nil_or_equal(expected.utc_offset, actual.utc_offset, 'utc_offset')
    elsif expected.respond_to?(:offset)
      assert_nil_or_equal(expected.offset, actual.offset, 'offset')
    end

    # Time (on MRI and Rubinius, but not JRuby) and Timestamp distinguish between
    # UTC and a local time with 0 offset from UTC.
    if expected.respond_to?(:utc?)
      assert_nil_or_equal(expected.utc?, actual.utc?, 'utc?')
    end
  end

  def assert_equal_with_offset_and_period(expected, actual)
    assert_equal_with_offset(expected, actual)
    assert_equal(expected.period, actual.period)
  end

  def assert_equal_with_offset_and_class(expected, actual)
    assert_equal_with_offset(expected, actual)
    assert_equal(expected.class, actual.class)
  end

  def time_types_test(*required_features)
    [TestUtils::TimeTypesTimeHelper, TestUtils::TimeTypesDateTimeHelper, TestUtils::TimeTypesTimestampHelper].each do |helper_class|
      if required_features.all? {|f| helper_class.supports?(f) }
        yield helper_class.new
      end
    end
  end
end
