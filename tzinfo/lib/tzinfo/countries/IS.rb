require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IS < Country #:nodoc:
def initialize
  super
  set_code('IS')
  set_name('Iceland')
  add_zone('Atlantic/Reykjavik')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
