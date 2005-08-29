require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AX < Country #:nodoc:
def initialize
  super
  set_code('AX')
  set_name('Aaland Islands')
  add_zone('Europe/Mariehamn')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
