require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MW < Country #:nodoc:
def initialize
  super
  set_code('MW')
  set_name('Malawi')
  add_zone('Africa/Blantyre')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
