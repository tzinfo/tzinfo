require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CX < Country #:nodoc:
def initialize
  super
  set_code('CX')
  set_name('Christmas Island')
  add_zone('Indian/Christmas')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
