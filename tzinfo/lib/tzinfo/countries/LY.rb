require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LY < Country #:nodoc:
def initialize
  super
  set_code('LY')
  set_name('Libya')
  add_zone('Africa/Tripoli')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
