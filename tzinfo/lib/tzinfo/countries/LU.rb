require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LU < Country #:nodoc:
def initialize
  super
  set_code('LU')
  set_name('Luxembourg')
  add_zone('Europe/Luxembourg')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
