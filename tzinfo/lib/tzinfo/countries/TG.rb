require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TG < Country #:nodoc:
def initialize
  super
  set_code('TG')
  set_name('Togo')
  add_zone('Africa/Lome')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
