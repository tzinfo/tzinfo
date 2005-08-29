require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CY < Country #:nodoc:
def initialize
  super
  set_code('CY')
  set_name('Cyprus')
  add_zone('Asia/Nicosia')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
