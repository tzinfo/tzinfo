require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ET < Country #:nodoc:
def initialize
  super
  set_code('ET')
  set_name('Ethiopia')
  add_zone('Africa/Addis_Ababa')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
