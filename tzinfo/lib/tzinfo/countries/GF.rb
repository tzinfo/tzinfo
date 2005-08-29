require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GF < Country #:nodoc:
def initialize
  super
  set_code('GF')
  set_name('French Guiana')
  add_zone('America/Cayenne')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
