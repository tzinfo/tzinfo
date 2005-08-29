require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class HR < Country #:nodoc:
def initialize
  super
  set_code('HR')
  set_name('Croatia')
  add_zone('Europe/Zagreb')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
