require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class DZ < Country #:nodoc:
def initialize
  super
  set_code('DZ')
  set_name('Algeria')
  add_zone('Africa/Algiers')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
