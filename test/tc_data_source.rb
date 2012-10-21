require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tmpdir'

include TZInfo

class TCDataSource < Test::Unit::TestCase
  class InitDataSource < DataSource
  end
  
  class DummyDataSource < DataSource
  end
  
  def setup
    @orig_data_source = DataSource.current
    DataSource.set(InitDataSource.new)
    @orig_search_paths = ZoneinfoDataSource.search_paths.clone
  end
  
  def teardown
    DataSource.set(@orig_data_source)
    ZoneinfoDataSource.search_paths = @orig_search_paths
  end
  
  def test_current
    data_source = DataSource.current
    assert_kind_of(InitDataSource, data_source)
  end
  
  def test_current_default_ruby_only    
    code = <<-EOF
      require 'tmpdir'
      
      begin
        Dir.mktmpdir('tzinfo_test_dir') do |dir|
          TZInfo::ZoneinfoDataSource.search_paths = [dir]
          
          puts TZInfo::DataSource.current.class
        end
      rescue Exception => e
        puts "Unexpected exception: \#{e}"
      end
    EOF
    
    assert_sub_process_returns(['TZInfo::RubyDataSource'], code, [TZINFO_TEST_DATA_DIR])
  end
  
  def test_current_default_zoneinfo_only
    code = <<-EOF
      require 'tmpdir'
      
      begin
        Dir.mktmpdir('tzinfo_test_dir') do |dir|
          TZInfo::ZoneinfoDataSource.search_paths = [dir, '#{TZINFO_TEST_ZONEINFO_DIR}']
          
          puts TZInfo::DataSource.current.class
          puts TZInfo::DataSource.current.zoneinfo_dir
        end
      rescue Exception => e
        puts "Unexpected exception: \#{e}"
      end
    EOF
    
    assert_sub_process_returns(
      ['TZInfo::ZoneinfoDataSource', TZINFO_TEST_ZONEINFO_DIR], 
      code)
  end
  
  def test_current_default_ruby_and_zoneinfo
    code = <<-EOF
      begin
        TZInfo::ZoneinfoDataSource.search_paths = ['#{TZINFO_TEST_ZONEINFO_DIR}']
          
        puts TZInfo::DataSource.current.class
      rescue Exception => e
        puts "Unexpected exception: \#{e}"
      end
    EOF
    
    assert_sub_process_returns(['TZInfo::RubyDataSource'], code, [TZINFO_TEST_DATA_DIR])
  end
  
  def test_current_default_no_data
    code = <<-EOF
      require 'tmpdir'
      
      begin
        Dir.mktmpdir('tzinfo_test_dir') do |dir|
          TZInfo::ZoneinfoDataSource.search_paths = [dir]
          
          begin
            data_source = TZInfo::DataSource.current
            puts "No exception raised, returned \#{data_source} instead"
          rescue Exception => e
            puts e.class
          end
        end
      rescue Exception => e
        puts "Unexpected exception: \#{e}"
      end
    EOF
    
    assert_sub_process_returns(['TZInfo::DataSourceNotFound'], code)
  end
  
  def test_set_instance
    DataSource.set(DummyDataSource.new)
    data_source = DataSource.current
    assert_kind_of(DummyDataSource, data_source)
  end
  
  def test_set_standard_ruby
    DataSource.set(:ruby)
    data_source = DataSource.current
    assert_kind_of(RubyDataSource, data_source)
  end
  
  def test_set_standard_zoneinfo_search
    Dir.mktmpdir('tzinfo_test_dir') do |dir|
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      FileUtils.touch(File.join(dir, 'zone.tab'))
              
      ZoneinfoDataSource.search_paths = [dir]
      
      DataSource.set(:zoneinfo)
      data_source = DataSource.current
      assert_kind_of(ZoneinfoDataSource, data_source)
      assert_equal(dir, data_source.zoneinfo_dir)      
    end
  end
  
  def test_set_standard_zoneinfo_explicit
    Dir.mktmpdir('tzinfo_test_dir') do |dir|
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      FileUtils.touch(File.join(dir, 'zone.tab'))      
      
      DataSource.set(:zoneinfo, dir)
      data_source = DataSource.current
      assert_kind_of(ZoneinfoDataSource, data_source)
      assert_equal(dir, data_source.zoneinfo_dir)      
    end
  end
  
  def test_set_standard_zoneinfo_search_not_found
    Dir.mktmpdir('tzinfo_test_dir') do |dir|
      ZoneinfoDataSource.search_paths = [dir]
      
      assert_raises(ZoneinfoDirectoryNotFound) do
        DataSource.set(:zoneinfo)
      end
      
      assert_kind_of(InitDataSource, DataSource.current)
    end
  end
  
  def test_set_standard_zoneinfo_explicit_invalid
    Dir.mktmpdir('tzinfo_test_dir') do |dir|
      assert_raises(InvalidZoneinfoDirectory) do
        DataSource.set(:zoneinfo, dir)
      end
      
      assert_kind_of(InitDataSource, DataSource.current)      
    end
  end
  
  def test_set_standard_zoneinfo_wrong_arg_count
    assert_raises(ArgumentError) do
      DataSource.set(:zoneinfo, 1, 2)
    end
    
    assert_kind_of(InitDataSource, DataSource.current)
  end
end
