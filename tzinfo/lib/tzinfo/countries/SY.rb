require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SY < Country #:nodoc:
def initialize
  super
  set_code('SY')
  set_name('Syria')
  add_zone('Asia/Damascus')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
