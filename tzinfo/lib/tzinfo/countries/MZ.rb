require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MZ < Country #:nodoc:
def initialize
  super
  set_code('MZ')
  set_name('Mozambique')
  add_zone('Africa/Maputo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
