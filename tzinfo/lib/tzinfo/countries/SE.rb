require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SE < Country #:nodoc:
def initialize
  super
  set_code('SE')
  set_name('Sweden')
  add_zone('Europe/Stockholm')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
