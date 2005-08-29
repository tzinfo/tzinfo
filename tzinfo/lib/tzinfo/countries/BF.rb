require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BF < Country #:nodoc:
def initialize
  super
  set_code('BF')
  set_name('Burkina Faso')
  add_zone('Africa/Ouagadougou')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
