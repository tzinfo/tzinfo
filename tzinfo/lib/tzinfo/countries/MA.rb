require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MA < Country #:nodoc:
def initialize
  super
  set_code('MA')
  set_name('Morocco')
  add_zone('Africa/Casablanca')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
