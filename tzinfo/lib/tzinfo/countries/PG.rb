require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PG < Country #:nodoc:
def initialize
  super
  set_code('PG')
  set_name('Papua New Guinea')
  add_zone('Pacific/Port_Moresby')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
