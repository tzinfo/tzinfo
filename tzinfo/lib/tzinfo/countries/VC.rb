require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class VC < Country #:nodoc:
def initialize
  super
  set_code('VC')
  set_name('St Vincent')
  add_zone('America/St_Vincent')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
