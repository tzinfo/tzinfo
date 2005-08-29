require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NE < Country #:nodoc:
def initialize
  super
  set_code('NE')
  set_name('Niger')
  add_zone('Africa/Niamey')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
