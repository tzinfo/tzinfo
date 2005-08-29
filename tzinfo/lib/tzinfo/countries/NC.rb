require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NC < Country #:nodoc:
def initialize
  super
  set_code('NC')
  set_name('New Caledonia')
  add_zone('Pacific/Noumea')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
