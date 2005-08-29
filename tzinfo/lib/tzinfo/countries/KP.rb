require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KP < Country #:nodoc:
def initialize
  super
  set_code('KP')
  set_name('Korea (North)')
  add_zone('Asia/Pyongyang')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
