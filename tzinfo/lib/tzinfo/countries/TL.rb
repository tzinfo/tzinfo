require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TL < Country #:nodoc:
def initialize
  super
  set_code('TL')
  set_name('East Timor')
  add_zone('Asia/Dili')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
