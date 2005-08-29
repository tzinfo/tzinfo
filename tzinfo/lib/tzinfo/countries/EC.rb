require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class EC < Country #:nodoc:
def initialize
  super
  set_code('EC')
  set_name('Ecuador')
  add_zone('Pacific/Galapagos')
  add_zone('America/Guayaquil')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
