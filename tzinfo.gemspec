tzinfo_version_file = File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'tzinfo', 'version.rb').untaint

tzinfo_version = File.open(tzinfo_version_file, RUBY_VERSION =~ /\A1\.[0-8]\./ ? 'r' : 'r:utf-8') do |file|
  file.readlines.grep(/\s*VERSION\s*=\s*['"](\d+(\.\d+){2})['"]/) { $1 }.first
end

Gem::Specification.new do |s|
  s.name = 'tzinfo'
  s.version = tzinfo_version
  s.summary = 'Daylight savings aware timezone library'
  s.description = 'TZInfo provides daylight savings aware transformations between times in different time zones.'
  s.author = 'Philip Ross'
  s.email = 'phil.ross@gmail.com'
  s.homepage = 'http://tzinfo.github.io'
  s.license = 'MIT'
  s.files = %w(CHANGES.md LICENSE Rakefile README.md tzinfo.gemspec .yardopts) +
            Dir['lib/**/*.rb'].delete_if {|f| f.include?('.svn')} +
            Dir['test/**/*.rb'].delete_if {|f| f.include?('.svn')} +
            Dir['test/zoneinfo/**/*'].delete_if {|f| f.include?('.svn') || File.symlink?(f)}
  s.platform = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rdoc_options << '--title' << 'TZInfo' <<
                    '--main' << 'README.md'
  s.extra_rdoc_files = ['README.md', 'CHANGES.md', 'LICENSE']
  s.required_ruby_version = '>= 1.8.7'
end
