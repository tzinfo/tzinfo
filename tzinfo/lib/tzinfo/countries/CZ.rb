require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CZ < Country #:nodoc:
def initialize
  super
  set_code('CZ')
  set_name('Czech Republic')
  add_zone('Europe/Prague')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
