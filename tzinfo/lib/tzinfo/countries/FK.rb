require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FK < Country #:nodoc:
def initialize
  super
  set_code('FK')
  set_name('Falkland Islands')
  add_zone('Atlantic/Stanley')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
