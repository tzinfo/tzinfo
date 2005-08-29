require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CO < Country #:nodoc:
def initialize
  super
  set_code('CO')
  set_name('Colombia')
  add_zone('America/Bogota')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
