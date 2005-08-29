require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FI < Country #:nodoc:
def initialize
  super
  set_code('FI')
  set_name('Finland')
  add_zone('Europe/Helsinki')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
