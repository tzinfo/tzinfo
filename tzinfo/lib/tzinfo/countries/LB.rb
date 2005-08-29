require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LB < Country #:nodoc:
def initialize
  super
  set_code('LB')
  set_name('Lebanon')
  add_zone('Asia/Beirut')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
