# Available options:
#
# rake test - Runs all test cases.
# rake package - Runs test cases and builds packages for distribution.
# rake rdoc - Builds API documentation id doc dir.
# rake build_tz_classes - Builds Timezone and Country classes. Expects to find
#   source data in ../data.
# rake build_tz_class zone=Zone/Name - Builds single Timezone class. Expects to
#   find source data in ../data.

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

PKG_VERSION = "0.1.1"
PKG_FILES = FileList[
  '[A-z]*', 
  'bin/**/*',
  'lib/**/*',
  'test/**/*'
]

SPEC = Gem::Specification.new do |s|
  s.name = "tzinfo"
  s.version = PKG_VERSION
  s.author = "Philip Ross"
  s.email = "philip@ross.org.uk"
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
  p = TZInfo::TZDataParser.new('../data', 'lib/tzinfo')
  p.execute
end

task :build_tz_class do
  require 'lib/tzinfo/tzdataparser'
  p = TZInfo::TZDataParser.new('../data', 'lib/tzinfo')
  p.generate_countries = false
  p.only_zones = [ENV['zone']]
  p.execute
end
