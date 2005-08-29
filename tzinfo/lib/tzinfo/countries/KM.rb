require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KM < Country #:nodoc:
def initialize
  super
  set_code('KM')
  set_name('Comoros')
  add_zone('Indian/Comoro')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
