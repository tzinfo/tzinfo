require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GP < Country #:nodoc:
def initialize
  super
  set_code('GP')
  set_name('Guadeloupe')
  add_zone('America/Guadeloupe')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
