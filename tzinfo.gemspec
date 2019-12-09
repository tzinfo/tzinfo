require File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'tzinfo', 'version')

Gem::Specification.new do |s|
  s.name = 'tzinfo'
  s.version = TZInfo::VERSION
  s.summary = 'Time Zone Library'
  s.description = 'TZInfo provides access to time zone data and allows times to be converted using time zone rules.'
  s.author = 'Philip Ross'
  s.email = 'phil.ross@gmail.com'
  s.homepage = 'https://tzinfo.github.io'
  s.license = 'MIT'
  s.files = %w(CHANGES.md LICENSE README.md .yardopts) + Dir['lib/**/*.rb']
  s.platform = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rdoc_options << '--title' << 'TZInfo' <<
                    '--main' << 'README.md'
  s.extra_rdoc_files = ['README.md', 'CHANGES.md', 'LICENSE']
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency 'concurrent-ruby', '~> 1.0'
end
