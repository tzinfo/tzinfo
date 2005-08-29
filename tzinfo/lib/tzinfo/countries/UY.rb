require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class UY < Country #:nodoc:
def initialize
  super
  set_code('UY')
  set_name('Uruguay')
  add_zone('America/Montevideo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
