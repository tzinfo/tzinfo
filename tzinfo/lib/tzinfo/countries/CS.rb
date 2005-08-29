require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CS < Country #:nodoc:
def initialize
  super
  set_code('CS')
  set_name('Serbia and Montenegro')
  add_zone('Europe/Belgrade')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
