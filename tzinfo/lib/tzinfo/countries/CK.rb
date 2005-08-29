require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CK < Country #:nodoc:
def initialize
  super
  set_code('CK')
  set_name('Cook Islands')
  add_zone('Pacific/Rarotonga')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
