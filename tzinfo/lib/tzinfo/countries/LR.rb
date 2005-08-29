require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LR < Country #:nodoc:
def initialize
  super
  set_code('LR')
  set_name('Liberia')
  add_zone('Africa/Monrovia')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
