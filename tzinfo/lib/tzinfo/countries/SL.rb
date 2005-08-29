require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SL < Country #:nodoc:
def initialize
  super
  set_code('SL')
  set_name('Sierra Leone')
  add_zone('Africa/Freetown')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
