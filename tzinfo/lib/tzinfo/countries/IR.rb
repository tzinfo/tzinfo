require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IR < Country #:nodoc:
def initialize
  super
  set_code('IR')
  set_name('Iran')
  add_zone('Asia/Tehran')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
