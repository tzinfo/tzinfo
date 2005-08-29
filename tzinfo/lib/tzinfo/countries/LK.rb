require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LK < Country #:nodoc:
def initialize
  super
  set_code('LK')
  set_name('Sri Lanka')
  add_zone('Asia/Colombo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
