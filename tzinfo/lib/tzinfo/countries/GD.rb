require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GD < Country #:nodoc:
def initialize
  super
  set_code('GD')
  set_name('Grenada')
  add_zone('America/Grenada')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
