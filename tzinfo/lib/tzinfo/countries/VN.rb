require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class VN < Country #:nodoc:
def initialize
  super
  set_code('VN')
  set_name('Vietnam')
  add_zone('Asia/Saigon')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
