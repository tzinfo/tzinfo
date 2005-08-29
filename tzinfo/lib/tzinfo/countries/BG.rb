require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BG < Country #:nodoc:
def initialize
  super
  set_code('BG')
  set_name('Bulgaria')
  add_zone('Europe/Sofia')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
