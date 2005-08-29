require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MN < Country #:nodoc:
def initialize
  super
  set_code('MN')
  set_name('Mongolia')
  add_zone('Asia/Choibalsan')
  add_zone('Asia/Ulaanbaatar')
  add_zone('Asia/Hovd')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
