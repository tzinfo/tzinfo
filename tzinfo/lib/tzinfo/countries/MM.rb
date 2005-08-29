require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MM < Country #:nodoc:
def initialize
  super
  set_code('MM')
  set_name('Myanmar (Burma)')
  add_zone('Asia/Rangoon')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
