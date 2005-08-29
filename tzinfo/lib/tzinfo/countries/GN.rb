require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GN < Country #:nodoc:
def initialize
  super
  set_code('GN')
  set_name('Guinea')
  add_zone('Africa/Conakry')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
