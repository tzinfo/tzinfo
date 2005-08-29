require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class HT < Country #:nodoc:
def initialize
  super
  set_code('HT')
  set_name('Haiti')
  add_zone('America/Port-au-Prince')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
