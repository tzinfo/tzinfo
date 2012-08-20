require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'fileutils'
require 'tmpdir'

include TZInfo

class TCZoneinfoDataSource < Test::Unit::TestCase
  ZONEINFO_DIR = File.join(File.expand_path(File.dirname(__FILE__)), 'zoneinfo').untaint
  
  def setup
    @orig_search_paths = ZoneinfoDataSource.search_paths.clone
    @orig_pwd = FileUtils.pwd
    
    # A zoneinfo directory containing files needed by the tests.
    # The symlinks in this directory are set up in test_utils.rb.
    @data_source = ZoneinfoDataSource.new(ZONEINFO_DIR)
  end
  
  def teardown
    ZoneinfoDataSource.search_paths = @orig_search_paths
    FileUtils.chdir(@orig_pwd)
  end
  
  def test_default_search_paths
    assert_equal(['/usr/share/zoneinfo', '/usr/share/lib/zoneinfo', '/etc/zoneinfo'], ZoneinfoDataSource.search_paths)
    assert_equal(false, ZoneinfoDataSource.search_paths.frozen?)
  end
  
  def test_set_search_paths_default
    ZoneinfoDataSource.search_paths = nil
    assert_equal(['/usr/share/zoneinfo', '/usr/share/lib/zoneinfo', '/etc/zoneinfo'], ZoneinfoDataSource.search_paths)
    assert_equal(false, ZoneinfoDataSource.search_paths.frozen?)
  end
  
  def test_set_search_paths
    ZoneinfoDataSource.search_paths = ['/tmp/zoneinfo1', '/tmp/zoneinfo2']
    assert_equal(['/tmp/zoneinfo1', '/tmp/zoneinfo2'], ZoneinfoDataSource.search_paths)
  end
  
  def test_new_search
    Dir.mktmpdir('tzinfo_test_dir1') do |dir1|
      Dir.mktmpdir('tzinfo_test_dir2') do |dir2|
        Dir.mktmpdir('tzinfo_test_dir3') do |dir3|
          Dir.mktmpdir('tzinfo_test_dir4') do |dir4|
            file = File.join(dir1, 'file')
            FileUtils.touch(File.join(dir2, 'zone.tab'))
            FileUtils.touch(File.join(dir3, 'iso3166.tab'))
            FileUtils.touch(File.join(dir4, 'zone.tab'))
            FileUtils.touch(File.join(dir4, 'iso3166.tab'))
            
            ZoneinfoDataSource.search_paths = [file, dir2, dir3, dir4]
            
            data_source = ZoneinfoDataSource.new
            assert_equal(dir4, data_source.zoneinfo_dir)
          end
        end
      end
    end
  end
  
  def test_new_search_not_found
    Dir.mktmpdir('tzinfo_test_dir1') do |dir1|
      Dir.mktmpdir('tzinfo_test_dir2') do |dir2|
        Dir.mktmpdir('tzinfo_test_dir3') do |dir3|
          Dir.mktmpdir('tzinfo_test_dir4') do |dir4|
            file = File.join(dir1, 'file')
            FileUtils.touch(file)
            FileUtils.touch(File.join(dir2, 'zone.tab'))
            FileUtils.touch(File.join(dir3, 'iso3166.tab'))
            
            ZoneinfoDataSource.search_paths = [file, dir2, dir3, dir4]
                      
            assert_raises(ZoneinfoDirectoryNotFound) do
              ZoneinfoDataSource.new
            end
          end
        end
      end
    end
  end
  
  def test_new_search_relative
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      FileUtils.chdir(dir)
      
      ZoneinfoDataSource.search_paths = ['.']
      data_source = ZoneinfoDataSource.new
      assert_equal(File.expand_path(dir), data_source.zoneinfo_dir)
      
      # Change out of the directory to allow it to be deleted on Windows.
      FileUtils.chdir(@orig_pwd)
    end
  end
  
  def test_new_dir
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      data_source = ZoneinfoDataSource.new(dir)
      assert_equal(dir, data_source.zoneinfo_dir)
    end
  end
  
  def test_new_dir_invalid
    Dir.mktmpdir('tzinfo_test') do |dir|
      assert_raises(InvalidZoneinfoDirectory) do
        ZoneinfoDataSource.new(dir)
      end
    end
  end
  
  def test_new_file
    Dir.mktmpdir('tzinfo_test') do |dir|
      file = File.join(dir, 'file')
      FileUtils.touch(file)
      
      assert_raises(InvalidZoneinfoDirectory) do
        ZoneinfoDataSource.new(file)
      end
    end
  end

  def test_new_dir_relative
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      FileUtils.chdir(dir)
      
      data_source = ZoneinfoDataSource.new('.')
      assert_equal(File.expand_path(dir), data_source.zoneinfo_dir)
      
      # Change out of the directory to allow it to be deleted on Windows.
      FileUtils.chdir(@orig_pwd)
    end
  end
  
  def test_zoneinfo_dir
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      data_source = ZoneinfoDataSource.new(dir)
      assert_equal(dir, data_source.zoneinfo_dir)
      assert_equal(true, data_source.zoneinfo_dir.frozen?)
    end
  end
  
  def test_load_timezone_info_data
    info = @data_source.load_timezone_info('Europe/London')
    assert_kind_of(ZoneinfoTimezoneInfo, info)
    assert_equal('Europe/London', info.identifier)
  end
  
  def test_load_timezone_info_linked
    info = @data_source.load_timezone_info('UTC')
    
    # On platforms that don't support symlinks, 'UTC' wil be created as a copy, 
    # so will return a ZoneinfoTimezoneInfo
    
    if File.symlink?(File.join(@data_source.zoneinfo_dir, 'UTC'))
      assert_kind_of(LinkedTimezoneInfo, info)
      assert_equal('UTC', info.identifier)
      assert_equal('Etc/UTC', info.link_to_identifier)
    else
      assert_kind_of(ZoneinfoTimezoneInfo, info)
      assert_equal('UTC', info.identifier)
    end
  end
  
  def test_load_timezone_info_does_not_exist
    assert_raises(InvalidTimezoneIdentifier) do
      @data_source.load_timezone_info('Nowhere/Special')
    end
  end
  
  def test_load_timezone_info_invalid
    assert_raises(InvalidTimezoneIdentifier) do
      @data_source.load_timezone_info('../Definitions/Europe/London')
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

  def test_load_timezone_info_permission_denied
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      file = File.join(dir, 'UTC')
      FileUtils.touch(file)
      FileUtils.chmod(0200, file)      
      
      data_source = ZoneinfoDataSource.new(dir)
      
      assert_raises(InvalidTimezoneIdentifier) do
        data_source.load_timezone_info('UTC')
      end
    end
  end
  
    def test_load_timezone_info_directory
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      subdir = File.join(dir, 'Subdir')
      FileUtils.mkdir(subdir)     
      
      data_source = ZoneinfoDataSource.new(dir)
      
      assert_raises(InvalidTimezoneIdentifier) do
        data_source.load_timezone_info('Subdir')
      end
    end
  end
  
  def test_load_timezone_info_linked_absolute_outside
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      file = File.join(dir, 'localtime')
      
      begin
        FileUtils.ln_s('/etc/localtime', file)
      rescue NotImplementedError
        # Symlinks not supported on this platform - skip test
        return
      end
      
      data_source = ZoneinfoDataSource.new(dir)
      
      assert_raises(InvalidTimezoneIdentifier) do
        data_source.load_timezone_info('localtime')
      end
    end
  end
  
  def test_load_timezone_info_linked_absolute_inside
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      FileUtils.cp(File.join(@data_source.zoneinfo_dir, 'EST'), File.join(dir, 'EST'))
      
      link = File.join(dir, 'Link')
      
      begin  
        FileUtils.ln_s(File.join(File.expand_path(dir), 'EST'), link)      
      rescue NotImplementedError
        # Symlinks not supported on this platform - skip test
        return
      end
      
      data_source = ZoneinfoDataSource.new(dir)
      
      info = data_source.load_timezone_info('Link')
      assert_kind_of(LinkedTimezoneInfo, info)
      assert_equal('Link', info.identifier)
      assert_equal('EST', info.link_to_identifier)
    end
  end

  def test_load_timezone_info_linked_relative_outside
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      link = File.join(dir, 'Link')      
      
      begin
        FileUtils.ln_s('../outside', link)
      rescue NotImplementedError
        # Symlinks not supported on this platform - skip test
        return
      end
      
      subdir = File.join(dir, 'Subdir')
      subdir_link = File.join(subdir, 'Link')
      FileUtils.mkdir(subdir)
      FileUtils.ln_s('../../outside', subdir_link)
      
      data_source = ZoneinfoDataSource.new(dir)
      
      assert_raises(InvalidTimezoneIdentifier) do
        data_source.load_timezone_info('Link')
      end
      
      assert_raises(InvalidTimezoneIdentifier) do
        data_source.load_timezone_info('Subdir/Link')
      end
    end
  end
  
  def test_load_timezone_info_linked_relative_parent_inside
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
      
      FileUtils.cp(File.join(@data_source.zoneinfo_dir, 'EST'), File.join(dir, 'EST'))
       
      subdir = File.join(dir, 'Subdir')
      FileUtils.mkdir(subdir)
      FileUtils.cp(File.join(@data_source.zoneinfo_dir, 'EST'), File.join(subdir, 'EST'))
      
      subdir_link = File.join(subdir, 'Link')
      begin
        FileUtils.ln_s('../Subdir/EST', subdir_link)
      rescue NotImplementedError
        # Symlinks not supported on this platform - skip test
        return
      end
      
      subdir_link2 = File.join(subdir, 'Link2')
      FileUtils.ln_s('../EST', subdir_link2)
      
      subdir2 = File.join(dir, 'Subdir2')
      FileUtils.mkdir(subdir2)
      subdir2_link = File.join(subdir2, 'Link')
      FileUtils.ln_s('../Subdir/EST', subdir2_link)
      
      data_source = ZoneinfoDataSource.new(dir)
      
      info = data_source.load_timezone_info('Subdir/Link')
      assert_kind_of(LinkedTimezoneInfo, info)
      assert_equal('Subdir/Link', info.identifier)
      assert_equal('Subdir/EST', info.link_to_identifier)
      
      info = data_source.load_timezone_info('Subdir/Link2')
      assert_kind_of(LinkedTimezoneInfo, info)
      assert_equal('Subdir/Link2', info.identifier)
      assert_equal('EST', info.link_to_identifier)
      
      info = data_source.load_timezone_info('Subdir2/Link')
      assert_kind_of(LinkedTimezoneInfo, info)
      assert_equal('Subdir2/Link', info.identifier)
      assert_equal('Subdir/EST', info.link_to_identifier)
    end
  end
  
  def test_load_timezone_info_invalid_file
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))
  
      File.open(File.join(dir, 'Zone'), 'wb') do |file|
        file.write('NotAValidTZifFile')        
      end
      
      data_source = ZoneinfoDataSource.new(dir)
      
      assert_raises(InvalidTimezoneIdentifier) do
        data_source.load_timezone_info('Zone')
      end      
    end
  end
    
  def test_load_timezone_info_invalid_file_2
    Dir.mktmpdir('tzinfo_test') do |dir|
      FileUtils.touch(File.join(dir, 'zone.tab'))
      FileUtils.touch(File.join(dir, 'iso3166.tab'))

      zone = File.join(dir, 'Zone')      
      
      File.open(File.join(@data_source.zoneinfo_dir, 'EST')) do |src|
        # Change format to 3 (which is not a valid format).
        File.open(zone, 'wb') do |dest|
          dest.write('TZif3')
          src.pos = 5
          FileUtils.copy_stream(src, dest)
        end
      end
      
      data_source = ZoneinfoDataSource.new(dir)
      
      assert_raises(InvalidTimezoneIdentifier) do
        data_source.load_timezone_info('Zone')
      end      
    end
  end

  def test_load_timezone_info_tainted
    safe_test do
      info = @data_source.load_timezone_info('Europe/Amsterdam'.taint)
      assert_equal('Europe/Amsterdam', info.identifier)
    end
  end
  
  def test_load_timezone_info_tainted_zoneinfo_dir_safe_mode
    safe_test do
      assert_raises(SecurityError) do
        ZoneinfoDataSource.new(@data_source.zoneinfo_dir.dup.taint)
      end
    end
  end
  
  def test_load_timezone_info_tainted_zoneinfo_dir_safe_mode
    data_source = ZoneinfoDataSource.new(@data_source.zoneinfo_dir.dup.taint)
    info = data_source.load_timezone_info('Europe/London')
    assert_kind_of(ZoneinfoTimezoneInfo, info)
    assert_equal('Europe/London', info.identifier)
  end
  
  def get_timezone_filenames(directory)
    entries = Dir.glob(File.join(directory, '**', '*'))
    
    prefix = File.expand_path(directory) + File::SEPARATOR
    
    entries = entries.select do |file|
      if !file.include?('.')
        file.untaint
        
        if File.symlink?(file)
          link = File.readlink(file)
          
          if Pathname.new(File.readlink(file)).absolute?
            false
          else
            link.untaint
            expanded_link = File.expand_path(File.join(File.dirname(file), link))
            expanded_link[0, prefix.length] == prefix
          end
        elsif File.file?(file)
          true
        else                  
          false
        end
      else
        false      
      end
    end
    
    if block_given?
      entries = entries.select {|file| yield file}
    end
    
    entries = entries.collect {|file| file[directory.length + File::SEPARATOR.length, file.length - directory.length - File::SEPARATOR.length]}
    
    # Exclude right (with leapseconds) and posix (copy) directories, localtime and posixrules
    entries = entries.select do |file| 
      file !~ /\A(posix|right)\// && 
        file !~ /(\A|\/)\.svn\// &&
        !%w(localtime posixrules Factory).include?(file)
    end
    
    entries.sort
  end

  def test_timezone_identifiers
    expected = get_timezone_filenames(@data_source.zoneinfo_dir)
    all = @data_source.timezone_identifiers
    assert_kind_of(Array, all)
    assert_array_same_items(expected, all)
    assert_equal(true, all.frozen?)
  end
  
  def test_data_timezone_identifiers
    expected = get_timezone_filenames(@data_source.zoneinfo_dir) do |file|
      !File.symlink?(file)
    end
  
    all_data = @data_source.data_timezone_identifiers
    assert_kind_of(Array, all_data)
    assert_array_same_items(expected, all_data)
    assert_equal(true, all_data.frozen?)
  end
  
  def test_linked_timezone_identifiers
    expected = get_timezone_filenames(@data_source.zoneinfo_dir) do |file|
      File.symlink?(file)
    end
    
    all_linked = @data_source.linked_timezone_identifiers
    assert_kind_of(Array, all_linked)
    assert_array_same_items(expected, all_linked)
    assert_equal(true, all_linked.frozen?)
  end
  
  def test_timezone_identifiers_safe_mode
    safe_test do
      expected = get_timezone_filenames(@data_source.zoneinfo_dir)
      all = @data_source.timezone_identifiers
      assert_kind_of(Array, all)
      assert_array_same_items(expected, all)
      assert_equal(true, all.frozen?)
    end
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
  
  def test_load_country_info_check_zones
    Dir.mktmpdir('tzinfo_test') do |dir|
      File.open(File.join(dir, 'iso3166.tab'), 'w') do |iso3166|
        iso3166.puts("FC\tFake Country")
        iso3166.puts("OC\tOther Country")
      end
      
      File.open(File.join(dir, 'zone.tab'), 'w') do |zone|
        zone.puts("FC\t+513030-0000731\tFake/One\tDescription of one")
        zone.puts("FC\t+353916+1394441\tFake/Two\tAnother description")
        zone.puts("FC\t-2332-04637\tFake/Three\tThis is Three")
        zone.puts("OC\t+5005+01426\tOther/One")
      end
      
      data_source = ZoneinfoDataSource.new(dir)
      
      info = data_source.load_country_info('FC')
      assert_equal('FC', info.code)
      assert_equal(['Fake/One', 'Fake/Two', 'Fake/Three'], info.zone_identifiers)
      assert_equal(true, info.zone_identifiers.frozen?)
      assert_equal([
        CountryTimezone.new('Fake/One', 6181, 120, -451, 3600, 'Description of one'),
        CountryTimezone.new('Fake/Two', 32089, 900, 503081, 3600, 'Another description'),
        CountryTimezone.new('Fake/Three', -353, 15, -2797, 60, 'This is Three')], info.zones)
      assert_equal(true, info.zones.frozen?)
      
      info = data_source.load_country_info('OC')
      assert_equal('OC', info.code)
      assert_equal(['Other/One'], info.zone_identifiers)
      assert_equal(true, info.zone_identifiers.frozen?)
      assert_equal([CountryTimezone.new('Other/One', 601, 12, 433, 30)], info.zones)
      assert_equal(true, info.zones.frozen?)
    end
  end
  
  def test_country_codes
    file_codes = []
        
    File.open(File.join(@data_source.zoneinfo_dir, 'iso3166.tab')) do |file|
      file.each_line do |line|
        line.chomp!
        file_codes << $1 if line =~ /\A([A-Z]{2})\t/
      end
    end
    
    codes = @data_source.country_codes
    assert_array_same_items(file_codes, codes)
    assert_equal(true, codes.frozen?)
  end
end
