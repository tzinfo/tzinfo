require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SV < Country #:nodoc:
def initialize
  super
  set_code('SV')
  set_name('El Salvador')
  add_zone('America/El_Salvador')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
