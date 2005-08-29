require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CC < Country #:nodoc:
def initialize
  super
  set_code('CC')
  set_name('Cocos (Keeling) Islands')
  add_zone('Indian/Cocos')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
