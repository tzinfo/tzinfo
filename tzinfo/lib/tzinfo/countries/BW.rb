require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BW < Country #:nodoc:
def initialize
  super
  set_code('BW')
  set_name('Botswana')
  add_zone('Africa/Gaborone')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
