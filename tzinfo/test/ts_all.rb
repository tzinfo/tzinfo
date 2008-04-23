# Force a particular timezone to be local (helps find issues when local
# timezone isn't GMT). This won't work on Windows.
ENV['TZ'] = 'America/Los_Angeles'

require 'test/unit'
Dir[File.join(File.dirname(__FILE__), 'tc_*.rb')].each {|t| require t}
