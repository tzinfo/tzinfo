require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SZ < Country #:nodoc:
def initialize
  super
  set_code('SZ')
  set_name('Swaziland')
  add_zone('Africa/Mbabane')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
