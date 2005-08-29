require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NO < Country #:nodoc:
def initialize
  super
  set_code('NO')
  set_name('Norway')
  add_zone('Europe/Oslo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
