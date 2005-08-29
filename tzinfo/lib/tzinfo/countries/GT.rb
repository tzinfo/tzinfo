require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GT < Country #:nodoc:
def initialize
  super
  set_code('GT')
  set_name('Guatemala')
  add_zone('America/Guatemala')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
