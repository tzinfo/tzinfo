# Available options:
#
# rake test - Runs all test cases.
# rake package - Runs test cases and builds packages for distribution.
# rake rdoc - Builds API documentation in doc dir.

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rubygems'
require 'rubygems/package_task'
require 'fileutils'

spec = eval(File.read('tzinfo.gemspec'))

self.class.class_eval { alias_method :orig_sh, :sh }
private :orig_sh

def sh(*cmd, &block)
  if cmd.first =~ /\A__tar_with_owner__ -?([zjcvf]+)(.*)\z/
    opts = $1
    args = $2
    cmd[0] = "tar c --owner 0 --group 0 -#{opts.gsub('c', '')}#{args}"    
  end
  
  orig_sh(*cmd, &block)
end

package_task = Gem::PackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar_gz = true
  pkg.tar_command = '__tar_with_owner__'
end

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title = "TZInfo Data"
  rdoc.options << '--inline-source'
  rdoc.options.concat spec.rdoc_options
  rdoc.rdoc_files.include(spec.extra_rdoc_files) 
  rdoc.rdoc_files.include('lib')  
end

Rake::Task[package_task.package_dir_path].enhance do
  File.chmod(0755, package_task.package_dir_path)
  recurse_chmod(package_task.package_dir_path)
end

Rake::Task[:package].enhance do
  FileUtils.rm_rf(package_task.package_dir_path)
end

def recurse_chmod(dir)
  File.chmod(0755, dir)
  
  Dir.entries(dir).each do |entry|
    if entry != '.' && entry != '..'    
      path = File.join(dir, entry)
      if File.directory?(path)
        recurse_chmod(path)
      else
        File.chmod(0644, path)
      end
    end
  end
end

task :test => [:test_ruby, :test_zoneinfo] do
end

def setup_tests(test_task, type)
  # Force a particular timezone to be local (helps find issues when local
  # timezone isn't GMT). This won't work on Windows.
  ENV['TZ'] = 'America/Los_Angeles'
  
  test_task.pattern = File.join(File.expand_path(File.dirname(__FILE__)), 'test', "ts_all_#{type}.rb")
end

Rake::TestTask.new('test_ruby') do |t|
  setup_tests(t, :ruby)
end

Rake::TestTask.new('test_zoneinfo') do |t|
  setup_tests(t, :zoneinfo)
end
