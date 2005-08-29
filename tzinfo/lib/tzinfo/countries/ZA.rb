require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ZA < Country #:nodoc:
def initialize
  super
  set_code('ZA')
  set_name('South Africa')
  add_zone('Africa/Johannesburg')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
