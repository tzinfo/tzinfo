require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LV < Country #:nodoc:
def initialize
  super
  set_code('LV')
  set_name('Latvia')
  add_zone('Europe/Riga')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
