require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AL < Country #:nodoc:
def initialize
  super
  set_code('AL')
  set_name('Albania')
  add_zone('Europe/Tirane')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
