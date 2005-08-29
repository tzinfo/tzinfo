require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SB < Country #:nodoc:
def initialize
  super
  set_code('SB')
  set_name('Solomon Islands')
  add_zone('Pacific/Guadalcanal')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
