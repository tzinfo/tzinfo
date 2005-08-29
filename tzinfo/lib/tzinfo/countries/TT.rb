require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TT < Country #:nodoc:
def initialize
  super
  set_code('TT')
  set_name('Trinidad & Tobago')
  add_zone('America/Port_of_Spain')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
