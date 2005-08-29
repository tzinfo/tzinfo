require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CV < Country #:nodoc:
def initialize
  super
  set_code('CV')
  set_name('Cape Verde')
  add_zone('Atlantic/Cape_Verde')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
