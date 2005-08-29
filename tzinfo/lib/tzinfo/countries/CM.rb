require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CM < Country #:nodoc:
def initialize
  super
  set_code('CM')
  set_name('Cameroon')
  add_zone('Africa/Douala')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
