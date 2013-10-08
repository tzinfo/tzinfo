name = "tzinfo"

# this is hacked up version because the rake tasks don't appear to work
Gem::Specification.new name, "0.3.38" do |s|
  s.summary = "Daylight-savings aware timezone library"
  s.authors = ["Philip Ross"]
  s.email = "phil.ross@gmail.com"
  s.homepage = "http://tzinfo.rubyforge.org/"
  s.files = `git ls-files lib`.split("\n")
end
