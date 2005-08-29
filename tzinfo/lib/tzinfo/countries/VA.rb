require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class VA < Country #:nodoc:
def initialize
  super
  set_code('VA')
  set_name('Vatican City')
  add_zone('Europe/Vatican')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
