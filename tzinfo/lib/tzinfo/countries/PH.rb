require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PH < Country #:nodoc:
def initialize
  super
  set_code('PH')
  set_name('Philippines')
  add_zone('Asia/Manila')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
