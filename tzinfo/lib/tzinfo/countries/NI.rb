require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NI < Country #:nodoc:
def initialize
  super
  set_code('NI')
  set_name('Nicaragua')
  add_zone('America/Managua')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
