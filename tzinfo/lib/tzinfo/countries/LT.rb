require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LT < Country #:nodoc:
def initialize
  super
  set_code('LT')
  set_name('Lithuania')
  add_zone('Europe/Vilnius')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
