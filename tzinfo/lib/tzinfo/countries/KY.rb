require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KY < Country #:nodoc:
def initialize
  super
  set_code('KY')
  set_name('Cayman Islands')
  add_zone('America/Cayman')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
