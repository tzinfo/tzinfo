require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class UG < Country #:nodoc:
def initialize
  super
  set_code('UG')
  set_name('Uganda')
  add_zone('Africa/Kampala')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
