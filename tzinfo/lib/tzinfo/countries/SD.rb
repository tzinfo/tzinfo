require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SD < Country #:nodoc:
def initialize
  super
  set_code('SD')
  set_name('Sudan')
  add_zone('Africa/Khartoum')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
