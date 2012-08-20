require 'test/unit'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'tzinfo'))
require 'fileutils'

module TestUtils
  ZONEINFO_SYMLINKS = [
    ['localtime', 'America/New_York'],
    ['UTC', 'Etc/UTC']]
  

  def self.prepare_test_zoneinfo_dir
    dir = File.expand_path(File.join(File.dirname(__FILE__), 'zoneinfo'))
    
    ZONEINFO_SYMLINKS.each do |file, target|
      path = File.join(dir, file)
      
      File.delete(path) if File.exists?(path)
    
      begin
        FileUtils.ln_s(target, path)
      rescue NotImplementedError
        target_path = File.join(dir, target)
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
    thread = Thread.new do
      $SAFE = level
      yield
    end
    
    thread.join
  end
  
  def assert_array_same_items(expected, actual, message = nil)
    full_message = ""
    #build_message(message, "<?> expected by was <?>.", expected, actual)
    
    assert_block(full_message) do
      (expected.size ==  actual.size) && (expected - actual == [])
    end
  end
end
