require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ZW < Country #:nodoc:
def initialize
  super
  set_code('ZW')
  set_name('Zimbabwe')
  add_zone('Africa/Harare')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
