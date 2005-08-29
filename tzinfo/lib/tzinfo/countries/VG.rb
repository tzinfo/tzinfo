require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class VG < Country #:nodoc:
def initialize
  super
  set_code('VG')
  set_name('Virgin Islands (UK)')
  add_zone('America/Tortola')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
