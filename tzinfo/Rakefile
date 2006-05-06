# Available options:
#
# rake test - Runs all test cases.
# rake package - Runs test cases and builds packages for distribution.
# rake rdoc - Builds API documentation in doc dir.
# rake build_tz_classes - Builds Timezone and Country classes. Expects to find
#   source data in ../data.
# rake build_tz_class zone=Zone/Name - Builds single Timezone class. Expects to
#   find source data in ../data.

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'fileutils'

PKG_VERSION = "0.2.1"
PKG_FILES = FileList[
  'CHANGES',
  'LICENSE',
  'Rakefile',
  'README',
  'bin/**/*',
  'lib/**/*',
  'test/**/*'
]

BUILD_TZ_CLASSES_DIR = 'lib/tzinfo.build_tz_classes'

SPEC = Gem::Specification.new do |s|
  s.name = "tzinfo"
  s.version = PKG_VERSION
  s.author = "Philip Ross"
  s.email = "phil.ross@gmail.com"
  s.homepage = "http://tzinfo.rubyforge.org/"
  s.platform = Gem::Platform::RUBY
  s.summary = "Daylight-savings aware timezone library"  
  s.files = PKG_FILES.delete_if do |item|
    item.include?(".svn")
  end
  s.require_path = "lib"
  s.autorequire = "tzinfo"  
  s.has_rdoc = false
  s.extra_rdoc_files = ["README","CHANGES"]
  s.rubyforge_project = "tzinfo"
end

Rake::GemPackageTask.new(SPEC) do |pkg|
  pkg.need_zip = true
  pkg.need_tar_gz = true
end


Rake::TestTask.new('test') do |t|
  # Force a particular timezone to be local (helps find issues when local
  # timezone isn't GMT). This won't work on Windows.
  ENV['TZ'] = 'America/Los_Angeles'

  t.libs << 'test'
  t.pattern = 'test/tc_*.rb'
  t.verbose = true
end


Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title = "TZInfo"
  rdoc.options << '--inline-source'  
  rdoc.rdoc_files.include('README', 'CHANGES') 
  rdoc.rdoc_files.include('lib')  
end

task :build_tz_classes do
  require 'lib/tzinfo/tzdataparser'
  
  FileUtils.mkdir_p(BUILD_TZ_CLASSES_DIR)
  begin  
    p = TZInfo::TZDataParser.new('../data', BUILD_TZ_CLASSES_DIR)
    p.execute
    
    ['indexes', 'definitions'].each {|dir|
      sync_svn("#{BUILD_TZ_CLASSES_DIR}/#{dir}", "lib/tzinfo/#{dir}")
    }        
  ensure
    FileUtils.rm_rf(BUILD_TZ_CLASSES_DIR)
  end
end

def sync_svn(source_dir, target_dir)
  puts "SVN Sync from #{source_dir} to #{target_dir}"

  # Assumes a directory will never turn into a file and vice-versa
  # (files will all end in .rb, directories won't).
  # SVN wouldn't allow the change in a single commit anyway.

  source_entries, target_entries = [source_dir, target_dir].collect {|dir|
    Dir.entries(dir).delete_if {|entry| entry =~ /^\.(\.?|svn)$/}.sort
  }
  
  until source_entries.empty? || target_entries.empty?          
    if source_entries.last == target_entries.last      
      source_file = "#{source_dir}/#{source_entries.last}"
      target_file = "#{target_dir}/#{target_entries.last}"
    
      if File.directory?(source_file)
        sync_svn(source_file, target_file)
      else
        FileUtils.cp(source_file, target_file)
      end     
    
      source_entries.pop
      target_entries.pop
    elsif source_entries.last < target_entries.last
      sync_svn_only_in_target(target_dir, target_entries)
    else      
      sync_svn_only_in_source(source_dir, target_dir, source_entries)
    end    
  end
  
  until target_entries.empty?
    sync_svn_only_in_target(target_dir, target_entries)
  end
  
  until source_entries.empty?
    sync_svn_only_in_source(source_dir, target_dir, source_entries)
  end
end

def sync_svn_only_in_target(target_dir, target_entries)
  target_file = "#{target_dir}/#{target_entries.last}"  
  exec_svn "delete \"#{target_file}\""
  target_entries.pop
end

def sync_svn_only_in_source(source_dir, target_dir, source_entries)
  source_file = "#{source_dir}/#{source_entries.last}"
  target_file = "#{target_dir}/#{source_entries.last}"
      
  if File.directory?(source_file)
    Dir.mkdir(target_file)
    exec_svn "add \"#{target_file}\""    
    sync_svn(source_file, target_file)
  else
    FileUtils.cp(source_file, target_file)
    exec_svn "add \"#{target_file}\""
  end
  
  source_entries.pop
end

def exec_svn(params)
  puts "svn #{params}"
  `svn #{params}`
  raise "SVN exited with status #$?" if $? != 0  
end

task :build_tz_class do
  require 'lib/tzinfo/tzdataparser'
  p = TZInfo::TZDataParser.new('../data', 'lib/tzinfo')
  p.generate_countries = false
  p.only_zones = [ENV['zone']]
  p.execute
end

task :build_countries do
  require 'lib/tzinfo/tzdataparser'
  p = TZInfo::TZDataParser.new('../data', 'lib/tzinfo')
  p.generate_countries = true
  p.generate_zones = false
  p.execute
end
