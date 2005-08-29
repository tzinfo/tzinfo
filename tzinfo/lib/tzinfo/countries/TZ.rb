require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TZ < Country #:nodoc:
def initialize
  super
  set_code('TZ')
  set_name('Tanzania')
  add_zone('Africa/Dar_es_Salaam')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
