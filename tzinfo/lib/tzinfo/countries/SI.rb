require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SI < Country #:nodoc:
def initialize
  super
  set_code('SI')
  set_name('Slovenia')
  add_zone('Europe/Ljubljana')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
