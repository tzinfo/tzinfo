require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BT < Country #:nodoc:
def initialize
  super
  set_code('BT')
  set_name('Bhutan')
  add_zone('Asia/Thimphu')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
