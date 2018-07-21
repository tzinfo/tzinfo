# frozen_string_literal: true

raise 'Tests must be run with bundler, e.g. bundle exec rake test' unless defined?(Bundler)

# Workaround an issue on JRuby where the stdlib directory can end up before the
# minitest gem in the load path. This causes an old built-in version of minitest
# to be loaded instead of the gem. https://github.com/jruby/jruby/issues/5038
if RUBY_ENGINE == 'jruby'
  stdlib_index = $:.find_index(RbConfig::CONFIG['rubylibdir'])
  minitest_index = $:.find_index(File.join(Bundler.rubygems.find_name('minitest').first.full_gem_path, 'lib'))

  if stdlib_index < minitest_index
    # The stdlib directory is before the minitest gem. Move stdlib to the end of
    # the load path.
    $:.push($:.delete_at(stdlib_index))
  end
end

COVERAGE_ENABLED = ENV['TEST_COVERAGE'] == '1'

if COVERAGE_ENABLED && defined?(COVERAGE_TYPE)
  COVERAGE_NOCOV_TOKEN = 'nocov' + [[[], :bsearch], [[], :bsearch_index]].map do |object, method|
    "(#{object.respond_to?(method) ? '' : '_no'}_#{method})?"
  end.join

  require 'simplecov'

  SimpleCov.start do
    command_name COVERAGE_TYPE
    add_filter 'test'
    nocov_token COVERAGE_NOCOV_TOKEN
    project_name 'TZInfo'
    self.formatters = [SimpleCov::Formatter::HTMLFormatter]
  end
end

TESTS_DIR = File.expand_path(File.dirname(__FILE__)).untaint
TZINFO_TEST_ZONEINFO_DIR = File.join(TESTS_DIR, 'zoneinfo')

unless defined? TZINFO_TEST_DATA_DIR
  TZINFO_TEST_DATA_DIR = File.join(TESTS_DIR, "tzinfo-data#{(defined? TZINFO_TEST_DATA_FORMAT) ? TZINFO_TEST_DATA_FORMAT : 2}")
  $:.unshift(TZINFO_TEST_DATA_DIR) unless $:.include?(TZINFO_TEST_DATA_DIR)
end

require 'minitest/autorun'
require 'tzinfo'
require 'date'
require 'fileutils'
require 'rbconfig'

module TestUtils
  ZONEINFO_SYMLINKS = [
    ['localtime', File.join('America', 'New_York')],
    ['UTC', File.join('Etc', 'UTC')]]


  def self.prepare_test_zoneinfo_dir
    ZONEINFO_SYMLINKS.each do |file, target|
      path = File.join(TZINFO_TEST_ZONEINFO_DIR, file)

      File.delete(path) if File.exist?(path)

      begin
        FileUtils.ln_s(target, path)
      rescue NotImplementedError, Errno::EACCES
        # Symlinks not supported on this platform, or permission denied
        # (administrative rights are required on Windows). Copy instead.
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

    def type
      :time
    end

    def time(year, month, day, hour, minute, second, sub_second = 0, utc_offset = 0)
      if utc_offset == :utc
        Time.utc(year, month, day, hour, minute, second + sub_second)
      else
        Time.new(year, month, day, hour, minute, second + sub_second, utc_offset)
      end
    end

    def time_with_offset(period, year, month, day, hour, minute, second, sub_second = 0)
      TZInfo::TimeWithOffset.new(year, month, day, hour, minute, second + sub_second, period.current_utc_offset).set_timezone_offset(period)
    end
  end

  class TimeTypesDateTimeHelper < TimeTypesHelper
    def self.supports?(feature)
      false
    end

    def type
      :datetime
    end

    def time(year, month, day, hour, minute, second, sub_second = 0, utc_offset = 0)
      utc_offset = 0 if utc_offset == :utc
      DateTime.new(year, month, day, hour, minute, second + sub_second, utc_offset.to_r / 86400)
    end

    def time_with_offset(offset, year, month, day, hour, minute, second, sub_second = 0)
      TZInfo::DateTimeWithOffset.new(year, month, day, hour, minute, second + sub_second, offset.current_utc_offset.to_r / 86400).set_timezone_offset(offset)
    end
  end

  class TimeTypesTimestampHelper < TimeTypesHelper
    def self.supports?(feature)
      feature == :distinct_utc || feature == :unspecified_offset || feature == :utc
    end

    def type
      :timestamp
    end

    def time(year, month, day, hour, minute, second, sub_second = 0, utc_offset = nil)
      Timestamp.create(year, month, day, hour, minute, second, sub_second, utc_offset)
    end

    def time_with_offset(offset, year, month, day, hour, minute, second, sub_second = 0)
      TimestampWithOffset.create(year, month, day, hour, minute, second, sub_second, offset.current_utc_offset).set_timezone_offset(offset)
    end
  end

  module Helpers
    def self.append_features(base)
      super
      base.extend(ClassMethods)
    end

    # Runs tests with each of the supported time representation types (DateTime,
    # Time or Timestamp). Types can be restricted by requiring features
    # (:distinct_utc, :unspecified_offset or :utc).
    def time_types_test(*required_features, &block)
      self.class.time_types_helpers(*required_features, &block)
    end

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

    # Runs a test with safe mode enabled ($SAFE = 1).
    def safe_test(options = {})
      # JRuby and Rubinius don't support SAFE levels.
      available = !%w(jruby rbx).include?(RUBY_ENGINE)

      if available || options[:unavailable] != :skip
        thread = Thread.new do
          orig_diff = Minitest::Assertions.diff

          if available
            orig_safe = $SAFE
            $SAFE = options[:level] || 1
          end
          begin
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
          ensure
            if available
              # On Ruby < 2.6, setting $SAFE affects only the current thread
              # and the $SAFE level cannot be downgraded. Catch and ignore the
              # SecurityError.
              # On Ruby >= 2.6, setting $SAFE is global, and the $SAFE level
              # can be downgraded. Restore $SAFE back to the original level.
              begin
                $SAFE = orig_safe
              rescue SecurityError
              end
            end
          end
        end

        thread.join
      end
    end

    def skip_if_has_bug_14060
      # On Ruby 2.4.4 in safe mode, require will fail with a SecurityError for
      # any file that has not previously been loaded, regardless of whether the
      # file name is tainted.
      # See https://bugs.ruby-lang.org/issues/14060#note-5.
      if RUBY_ENGINE == 'ruby' && RUBY_VERSION == '2.4.4'
        skip('Skipping test due to Ruby 2.4.4 being affected by Bug 14060 (see https://bugs.ruby-lang.org/issues/14060#note-5)')
      end
    end

    module ClassMethods
      # Yields instances of the TimeTypesHelper subclasses. Types can be
      # restricted by requiring features (:distinct_utc, :unspecified_offset or
      # :utc).
      def time_types_helpers(*required_features)
        [TestUtils::TimeTypesTimeHelper, TestUtils::TimeTypesDateTimeHelper, TestUtils::TimeTypesTimestampHelper].each do |helper_class|
          if required_features.all? {|f| helper_class.supports?(f) }
            yield helper_class.new
          end
        end
      end
    end
  end

  module Assertions
    # Assert that an array contains the same items independent of ordering.
    def assert_array_same_items(expected, actual, msg = nil)
      full_message = message(msg, '') { diff(expected, actual) }
      condition = (expected.size == actual.size) && (expected - actual == [])
      assert(condition, full_message)
    end

    # Keeps track of the number of times assert_sub_process_returns has been
    # called in order to name each SimpleCov run.
    @@assert_sub_process_returns_count = 0

    # Assert that starting a Ruby sub process to run code returns the output
    # contained in the expected_lines array. Directories in load_path are added
    # to the start of the load path before running requires. Each item in
    # required is passed to require before running the specified code.
    def assert_sub_process_returns(expected_lines, code, load_path = [], required = ['tzinfo'])
      ruby = File.join(RbConfig::CONFIG['bindir'],
        RbConfig::CONFIG['ruby_install_name'] + RbConfig::CONFIG['EXEEXT'])

      if RUBY_ENGINE == 'rbx'
        # Stop Rubinius from operating as irb.
        args = ' -'
      else
        args = ''
      end

      @@assert_sub_process_returns_count += 1

      IO.popen("\"#{ruby}\"#{args}", 'r+') do |process|
        load_path.each do |p|
          process.puts("$:.unshift('#{p.gsub("'", "\\\\'")}')")
        end

        if RUBY_ENGINE == 'rbx'
          # Bundler doesn't get set up automatically on Rubinius.
          process.puts("require 'bundler/setup'")
        end

        if COVERAGE_ENABLED && defined?(COVERAGE_TYPE)
          process.puts("require 'simplecov'")
          process.puts('SimpleCov.start do')
          process.puts("  command_name '#{COVERAGE_TYPE.gsub("'", "\\\\'")}:sp#{@@assert_sub_process_returns_count}'")
          process.puts("  add_filter 'test'")
          process.puts("  nocov_token '#{COVERAGE_NOCOV_TOKEN.gsub("'", "\\\\'")}'")
          process.puts("  project_name 'TZInfo'")
          process.puts('  self.formatters = []')
          process.puts('end')
        end

        required.each do |r|
          process.puts("require '#{r.gsub("'", "\\\\'")}'")
        end

        process.puts(code)
        process.flush
        process.close_write

        actual_lines = process.readlines
        actual_lines = actual_lines.collect(&:chomp)
        assert_equal(expected_lines, actual_lines)
      end
    end

    # Asserts that a block does not raise an exception.
    def assert_nothing_raised(msg = nil)
      begin
        yield
      rescue => e
        full_message = message(msg) { exception_details(e, 'Exception raised: ') }
        assert(false, full_message)
      end
    end

    # If expected is nil, asserts that actual is nil, otherwise asserts that
    # expected equals actual.
    def assert_nil_or_equal(expected, actual, msg = nil)
      if expected.nil?
        assert_nil(actual, msg)
      else
        assert_equal(expected, actual, msg)
      end
    end

    # Asserts that Time, DateTime or Timestamp instances are equal and that
    # their offsets are equal. The actual instance is allowed to be a subclass
    # of the expected class.
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

    # Asserts that TimeWithOffset, DateTimeWithOffset or TimestampWithOffset
    # instances are equal and that their associated TimezoneOffsets are also
    # equal.
    def assert_equal_with_offset_and_timezone_offset(expected, actual)
      assert_equal_with_offset(expected, actual)
      assert_kind_of(TimezoneOffset, actual.timezone_offset)
      assert_equal(expected.timezone_offset, actual.timezone_offset)
    end

    # Asserts that Time, DateTime or Timestamp instances are equal and that
    # their classes are identical.
    def assert_equal_with_offset_and_class(expected, actual)
      assert_equal_with_offset(expected, actual)
      assert_equal(expected.class, actual.class)
    end
  end
end

TestUtils.prepare_test_zoneinfo_dir

class Minitest::Test
  include TestUtils::Helpers
  include TestUtils::Assertions
end
