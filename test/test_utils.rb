#--
# Copyright (c) 2008-2014 Philip Ross
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
    # JRuby and Rubinus don't support SAFE levels.
    available = !(defined?(RUBY_ENGINE) && %w(jruby rbx).include?(RUBY_ENGINE))
   
    if available || options[:unavailable] != :skip
      thread = Thread.new do
        $SAFE = options[:level] || 1 if available
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
    
    # If RubyGems is loaded in the current process, then require it in the
    # sub-process, as it may be needed in order to require dependencies.
    if defined?(Gem) && Gem.instance_of?(Module)
      required = ['rubygems'] + required
    end
    
    if defined?(RUBY_ENGINE) && RUBY_ENGINE == 'rbx'
      # Stop Rubinus from operating as irb.
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

  def build_message(user_message, template_message, *args)
    user_message ||= ''
    user_message += ' ' unless user_message.empty?
    msg = template_message.split(/<\?>/).zip(args.map { |o| o.inspect })
    user_message + msg.join
  end

  def assert_nothing_raised _ = :ignored
    yield
  rescue => e
    raise Minitest::Assertion, exception_details(e, "Exception raised:")
  end

  def assert_not_same(expected, actual, message="")
    msg = message(msg) { build_message(message, "<?>with id <?> expected to not be equal\\? to<?>with id <?>.", expected, expected.__id__, actual, actual.__id__) }
    assert(!actual.equal?(expected), msg)
  end

  def assert_block(*msgs)
    assert yield, *msgs
  end
end


# JRuby 1.7.5 to 1.7.9 consider DateTime instances that differ by less than 
# 1 millisecond to be equivalent (https://github.com/jruby/jruby/issues/1311).
#
# A few test cases compare at a resolution of 1 microsecond, so this causes
# failures on JRuby 1.7.5 to 1.7.9.
#
# Determine what the platform supports and adjust the tests accordingly.
DATETIME_RESOLUTION = (0..5).collect {|i| 10**i}.find {|i| (DateTime.new(2013,1,1,0,0,0) <=> DateTime.new(2013,1,1,0,0,Rational(i,1000000))) < 0}
raise 'Unable to compare DateTimes at a resolution less than one second on this platform' unless DATETIME_RESOLUTION
