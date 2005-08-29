require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GM < Country #:nodoc:
def initialize
  super
  set_code('GM')
  set_name('Gambia')
  add_zone('Africa/Banjul')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
