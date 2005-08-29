require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class HK < Country #:nodoc:
def initialize
  super
  set_code('HK')
  set_name('Hong Kong')
  add_zone('Asia/Hong_Kong')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
