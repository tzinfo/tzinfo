#--
# Copyright (c) 2005-2013 Philip Ross
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

require 'rubygems'
require 'rubygems/package_task'
require 'fileutils'
require 'rake/testtask'

# Ignore errors loading rdoc and rdoc/task (rdoc.rb is not included in Ruby 1.8,
# rdoc/task.rb is not included prior to Ruby 1.9.2 and on Ruby 1.9.2, the 
# built-in version of rdoc/task.rb is not compatible with later versions of 
# rake - causing a RuntimeError to be raised when required).
begin
  require 'rdoc'
  require 'rdoc/task'
rescue LoadError, RuntimeError
end

task :default => [:test]

spec = eval(File.read('tzinfo.gemspec'))

class TZInfoPackageTask < Gem::PackageTask
  alias_method :orig_sh, :sh
  private :orig_sh

  def sh(*cmd, &block)
    if cmd.first =~ /\A__tar_with_owner__ -?([zjcvf]+)(.*)\z/
      opts = $1
      args = $2
      cmd[0] = "tar c --owner 0 --group 0 -#{opts.gsub('c', '')}#{args}"    
    end
  
    orig_sh(*cmd, &block)
  end
end

package_task = TZInfoPackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar_gz = true
  pkg.tar_command = '__tar_with_owner__'
end

# Skip the rdoc task if RDoc::Task is unavailable
if defined?(RDoc) && defined?(RDoc::Task)
  RDoc::Task.new do |rdoc|
    rdoc.rdoc_dir = 'doc'
    rdoc.title = 'TZInfo'
    rdoc.main = 'README'
    rdoc.options.concat spec.rdoc_options
    rdoc.rdoc_files.include(spec.extra_rdoc_files) 
    rdoc.rdoc_files.include('lib')  
  end
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

desc 'Run tests using RubyDataSource, then ZoneinfoDataSource'
task :test => [:test_ruby, :test_zoneinfo] do
end

def setup_tests(test_task, type)
  # Force a particular timezone to be local (helps find issues when local
  # timezone isn't GMT). This won't work on Windows.
  ENV['TZ'] = 'America/Los_Angeles'
  
  test_task.pattern = File.join(File.expand_path(File.dirname(__FILE__)), 'test', "ts_all_#{type}.rb")
end

Rake::TestTask.new(:test_ruby) do |t|
  setup_tests(t, :ruby)
end

Rake::TestTask.new(:test_zoneinfo) do |t|
  setup_tests(t, :zoneinfo)
end
