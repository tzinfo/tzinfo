require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AF < Country #:nodoc:
def initialize
  super
  set_code('AF')
  set_name('Afghanistan')
  add_zone('Asia/Kabul')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
