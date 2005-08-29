require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GW < Country #:nodoc:
def initialize
  super
  set_code('GW')
  set_name('Guinea-Bissau')
  add_zone('Africa/Bissau')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
