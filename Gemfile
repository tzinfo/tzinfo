source "https://rubygems.org"

gemspec

group :test do
  gem 'rake', ['>= 12.2.1', '< 14']
  gem 'minitest', '~> 5.0'
  gem 'simplecov', '~> 0.15.1', require: false

  # json is a dependency of simplecov. Version 2.3.0 is declared as compatible
  # with Ruby >= 1.9, but actually fails with a syntax error:
  # https://travis-ci.org/tzinfo/tzinfo/jobs/625092293#L605
  #
  # It also fails to build the native extension with Rubinius:
  # https://travis-ci.org/tzinfo/tzinfo/jobs/625092305#L1310
  #
  # Limit to earlier versions on Ruby 1.9 and Rubinius.
  gem 'json', '< 2.3.0' if RUBY_VERSION < '2.0' || RUBY_ENGINE == 'rbx'
end
