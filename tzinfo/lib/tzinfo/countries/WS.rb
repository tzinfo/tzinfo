require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class WS < Country #:nodoc:
def initialize
  super
  set_code('WS')
  set_name('Samoa (western)')
  add_zone('Pacific/Apia')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
