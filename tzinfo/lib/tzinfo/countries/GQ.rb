require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GQ < Country #:nodoc:
def initialize
  super
  set_code('GQ')
  set_name('Equatorial Guinea')
  add_zone('Africa/Malabo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
