require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ES < Country #:nodoc:
def initialize
  super
  set_code('ES')
  set_name('Spain')
  add_zone('Africa/Ceuta')
  add_zone('Atlantic/Canary')
  add_zone('Europe/Madrid')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
