require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BB < Country #:nodoc:
def initialize
  super
  set_code('BB')
  set_name('Barbados')
  add_zone('America/Barbados')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
