require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AT < Country #:nodoc:
def initialize
  super
  set_code('AT')
  set_name('Austria')
  add_zone('Europe/Vienna')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
