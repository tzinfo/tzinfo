require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BI < Country #:nodoc:
def initialize
  super
  set_code('BI')
  set_name('Burundi')
  add_zone('Africa/Bujumbura')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
