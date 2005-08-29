require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LI < Country #:nodoc:
def initialize
  super
  set_code('LI')
  set_name('Liechtenstein')
  add_zone('Europe/Vaduz')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
