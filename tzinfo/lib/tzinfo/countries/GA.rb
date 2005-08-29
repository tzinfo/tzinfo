require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GA < Country #:nodoc:
def initialize
  super
  set_code('GA')
  set_name('Gabon')
  add_zone('Africa/Libreville')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
