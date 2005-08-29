require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SK < Country #:nodoc:
def initialize
  super
  set_code('SK')
  set_name('Slovakia')
  add_zone('Europe/Bratislava')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
