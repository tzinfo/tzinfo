require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PW < Country #:nodoc:
def initialize
  super
  set_code('PW')
  set_name('Palau')
  add_zone('Pacific/Palau')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
