require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class DK < Country #:nodoc:
def initialize
  super
  set_code('DK')
  set_name('Denmark')
  add_zone('Europe/Copenhagen')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
