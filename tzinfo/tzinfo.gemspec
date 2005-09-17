require 'rubygems'
SPEC = Gem::Specification.new do |s|
  s.name = "tzinfo"
  s.version = "0.0.3"
  s.author = "Philip Ross"
  s.email = "philip@ross.org.uk"
  s.homepage = "http://tzinfo.rubyforge.org/"
  s.platform = Gem::Platform::RUBY
  s.summary = "Daylight-savings aware timezone library"
  candidates = Dir.glob("{bin,docs,lib,test}/**/*")
  s.files = candidates.delete_if do |item|
    item.include?(".svn") || item.include?("doc")
  end
  s.require_path = "lib"
  s.autorequire = "tzinfo"  
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]  
end