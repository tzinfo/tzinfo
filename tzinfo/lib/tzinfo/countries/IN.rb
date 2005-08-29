require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IN < Country #:nodoc:
def initialize
  super
  set_code('IN')
  set_name('India')
  add_zone('Asia/Calcutta')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
