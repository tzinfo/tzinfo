require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KH < Country #:nodoc:
def initialize
  super
  set_code('KH')
  set_name('Cambodia')
  add_zone('Asia/Phnom_Penh')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
