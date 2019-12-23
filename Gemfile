source "https://rubygems.org"

gemspec

group :test do
  gem 'rake', ['>= 10.5', '< 14']

  # Exclude Minitest v5.12.0. It is only compatible with Ruby >= 1.9.3, but does
  # not specify a minimum Ruby version.
  gem 'minitest', ['~> 5.11', '!= 5.12.0']
end
