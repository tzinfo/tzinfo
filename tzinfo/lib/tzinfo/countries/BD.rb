require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BD < Country #:nodoc:
def initialize
  super
  set_code('BD')
  set_name('Bangladesh')
  add_zone('Asia/Dhaka')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
