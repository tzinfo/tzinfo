require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MS < Country #:nodoc:
def initialize
  super
  set_code('MS')
  set_name('Montserrat')
  add_zone('America/Montserrat')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
