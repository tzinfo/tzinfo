require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BO < Country #:nodoc:
def initialize
  super
  set_code('BO')
  set_name('Bolivia')
  add_zone('America/La_Paz')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
