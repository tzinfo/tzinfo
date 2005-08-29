require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TN < Country #:nodoc:
def initialize
  super
  set_code('TN')
  set_name('Tunisia')
  add_zone('Africa/Tunis')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
