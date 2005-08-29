require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BS < Country #:nodoc:
def initialize
  super
  set_code('BS')
  set_name('Bahamas')
  add_zone('America/Nassau')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
