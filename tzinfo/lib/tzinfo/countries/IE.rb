require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IE < Country #:nodoc:
def initialize
  super
  set_code('IE')
  set_name('Ireland')
  add_zone('Europe/Dublin')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
