require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IO < Country #:nodoc:
def initialize
  super
  set_code('IO')
  set_name('British Indian Ocean Territory')
  add_zone('Indian/Chagos')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
