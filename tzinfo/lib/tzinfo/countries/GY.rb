require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GY < Country #:nodoc:
def initialize
  super
  set_code('GY')
  set_name('Guyana')
  add_zone('America/Guyana')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
