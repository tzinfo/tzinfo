require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SG < Country #:nodoc:
def initialize
  super
  set_code('SG')
  set_name('Singapore')
  add_zone('Asia/Singapore')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
