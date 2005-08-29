require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CD < Country #:nodoc:
def initialize
  super
  set_code('CD')
  set_name('Congo (Dem. Rep.)')
  add_zone('Africa/Kinshasa')
  add_zone('Africa/Lubumbashi')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
