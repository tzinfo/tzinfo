require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class EH < Country #:nodoc:
def initialize
  super
  set_code('EH')
  set_name('Western Sahara')
  add_zone('Africa/El_Aaiun')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
