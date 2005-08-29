require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CU < Country #:nodoc:
def initialize
  super
  set_code('CU')
  set_name('Cuba')
  add_zone('America/Havana')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
