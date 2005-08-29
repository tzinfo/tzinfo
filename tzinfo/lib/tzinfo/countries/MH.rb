require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MH < Country #:nodoc:
def initialize
  super
  set_code('MH')
  set_name('Marshall Islands')
  add_zone('Pacific/Kwajalein')
  add_zone('Pacific/Majuro')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
