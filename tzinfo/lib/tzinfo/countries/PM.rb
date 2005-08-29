require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PM < Country #:nodoc:
def initialize
  super
  set_code('PM')
  set_name('St Pierre & Miquelon')
  add_zone('America/Miquelon')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
