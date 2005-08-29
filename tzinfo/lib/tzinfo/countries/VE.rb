require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class VE < Country #:nodoc:
def initialize
  super
  set_code('VE')
  set_name('Venezuela')
  add_zone('America/Caracas')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
