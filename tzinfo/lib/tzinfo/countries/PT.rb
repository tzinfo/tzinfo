require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PT < Country #:nodoc:
def initialize
  super
  set_code('PT')
  set_name('Portugal')
  add_zone('Europe/Lisbon')
  add_zone('Atlantic/Azores')
  add_zone('Atlantic/Madeira')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
