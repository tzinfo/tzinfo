require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class HU < Country #:nodoc:
def initialize
  super
  set_code('HU')
  set_name('Hungary')
  add_zone('Europe/Budapest')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
