require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class YT < Country #:nodoc:
def initialize
  super
  set_code('YT')
  set_name('Mayotte')
  add_zone('Indian/Mayotte')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
