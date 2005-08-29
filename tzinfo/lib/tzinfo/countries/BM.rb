require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BM < Country #:nodoc:
def initialize
  super
  set_code('BM')
  set_name('Bermuda')
  add_zone('Atlantic/Bermuda')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
