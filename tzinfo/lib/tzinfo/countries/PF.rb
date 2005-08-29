require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PF < Country #:nodoc:
def initialize
  super
  set_code('PF')
  set_name('French Polynesia')
  add_zone('Pacific/Gambier')
  add_zone('Pacific/Tahiti')
  add_zone('Pacific/Marquesas')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
