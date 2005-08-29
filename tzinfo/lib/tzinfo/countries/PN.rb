require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PN < Country #:nodoc:
def initialize
  super
  set_code('PN')
  set_name('Pitcairn')
  add_zone('Pacific/Pitcairn')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
