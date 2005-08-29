require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PY < Country #:nodoc:
def initialize
  super
  set_code('PY')
  set_name('Paraguay')
  add_zone('America/Asuncion')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
