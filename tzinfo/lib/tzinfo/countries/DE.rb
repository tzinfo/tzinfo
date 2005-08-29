require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class DE < Country #:nodoc:
def initialize
  super
  set_code('DE')
  set_name('Germany')
  add_zone('Europe/Berlin')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
