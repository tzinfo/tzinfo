require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PK < Country #:nodoc:
def initialize
  super
  set_code('PK')
  set_name('Pakistan')
  add_zone('Asia/Karachi')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
