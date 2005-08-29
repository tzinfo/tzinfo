require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class RW < Country #:nodoc:
def initialize
  super
  set_code('RW')
  set_name('Rwanda')
  add_zone('Africa/Kigali')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
