require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CH < Country #:nodoc:
def initialize
  super
  set_code('CH')
  set_name('Switzerland')
  add_zone('Europe/Zurich')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
