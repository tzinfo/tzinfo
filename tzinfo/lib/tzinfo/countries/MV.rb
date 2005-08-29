require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MV < Country #:nodoc:
def initialize
  super
  set_code('MV')
  set_name('Maldives')
  add_zone('Indian/Maldives')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
