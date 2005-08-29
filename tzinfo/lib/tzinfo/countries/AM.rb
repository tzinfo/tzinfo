require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AM < Country #:nodoc:
def initialize
  super
  set_code('AM')
  set_name('Armenia')
  add_zone('Asia/Yerevan')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
