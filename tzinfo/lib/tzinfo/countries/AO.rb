require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AO < Country #:nodoc:
def initialize
  super
  set_code('AO')
  set_name('Angola')
  add_zone('Africa/Luanda')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
