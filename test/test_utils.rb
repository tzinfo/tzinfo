TESTS_DIR = File.expand_path(File.dirname(__FILE__)).untaint
TZINFO_LIB_DIR = File.expand_path(File.join(TESTS_DIR, '..', 'lib'))
TZINFO_TEST_DATA_DIR = File.join(TESTS_DIR, 'tzinfo-data')
TZINFO_TEST_ZONEINFO_DIR = File.join(TESTS_DIR, 'zoneinfo')

$:.unshift(TZINFO_LIB_DIR) unless $:.include?(TZINFO_LIB_DIR)

# tzinfo-data contains a cut down copy of tzinfo-data for use in the tests.
# Add it to the load path.
$:.unshift(TZINFO_TEST_DATA_DIR) unless $:.include?(TZINFO_TEST_DATA_DIR)

require 'test/unit'
require 'tzinfo'
require 'fileutils'
require 'rbconfig'

module TestUtils
  ZONEINFO_SYMLINKS = [
    ['localtime', 'America/New_York'],
    ['UTC', 'Etc/UTC']]
  

  def self.prepare_test_zoneinfo_dir
    ZONEINFO_SYMLINKS.each do |file, target|
      path = File.join(TZINFO_TEST_ZONEINFO_DIR, file)
      
      File.delete(path) if File.exists?(path)
    
      begin
        FileUtils.ln_s(target, path)
      rescue NotImplementedError
        target_path = File.join(TZINFO_TEST_ZONEINFO_DIR, target)
        FileUtils.cp(target_path, path)
      end
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
  
  def safe_test(level = 1)
    # Don't run on JRuby. It doesn't support SAFE levels.
    if RUBY_PLATFORM != 'java'
      thread = Thread.new do
        $SAFE = level
        yield
      end
      
      thread.join
    end
  end
  
  def assert_array_same_items(expected, actual, message = nil)
    full_message = build_message(message, "<?> expected but was <?>.", expected, actual)
    
    assert_block(full_message) do
      (expected.size == actual.size) && (expected - actual == [])
    end
  end
  
  def assert_sub_process_returns(expected_lines, code, extra_load_path = [], required = ['tzinfo'])
    ruby = File.join(RbConfig::CONFIG['bindir'], 
      RbConfig::CONFIG['ruby_install_name'] + RbConfig::CONFIG['EXEEXT'])
      
    load_path = [TZINFO_LIB_DIR] + extra_load_path
    load_path = load_path.collect {|p| "-I \"#{p}\""}.join(' ')
    
    required = required.collect {|r| "-r \"#{r}\""}.join(' ')
      
    IO.popen("\"#{ruby}\" #{load_path} #{required}", 'r+') do |process|
      process.puts(code)
      process.flush
      process.close_write
      
      actual_lines = process.readlines
      actual_lines = actual_lines.collect {|l| l.chomp}
      assert_equal(expected_lines, actual_lines)
    end
  end
end
