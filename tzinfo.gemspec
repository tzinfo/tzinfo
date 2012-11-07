Gem::Specification.new do |s|
  s.name = 'tzinfo'
  s.version = '1.0.0.pre1'  
  s.summary = 'Daylight-savings aware timezone library'
  s.description = 'TZInfo is a Ruby library that uses the standard tz (Olson) database to provide daylight savings aware transformations between times in different time zones.'
  s.author = 'Philip Ross'
  s.email = 'phil.ross@gmail.com'
  s.homepage = 'http://tzinfo.rubyforge.org'
  s.license = 'MIT' 
  s.files = ['CHANGES', 'LICENSE', 'Rakefile', 'README', 'lib', 'test'] +
            Dir['lib/**/*.rb'].delete_if {|f| f.include?('.svn')} +
            Dir['test/**/*'].delete_if {|f| f.include?('.svn')}
  s.platform = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.extra_rdoc_files = ['README', 'CHANGES', 'LICENSE']
  s.required_ruby_version = '>= 1.8.6'
end
