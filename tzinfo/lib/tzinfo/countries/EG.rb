require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class EG < Country #:nodoc:
def initialize
  super
  set_code('EG')
  set_name('Egypt')
  add_zone('Africa/Cairo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
