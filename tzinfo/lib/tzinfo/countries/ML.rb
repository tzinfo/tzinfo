require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ML < Country #:nodoc:
def initialize
  super
  set_code('ML')
  set_name('Mali')
  add_zone('Africa/Bamako')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
