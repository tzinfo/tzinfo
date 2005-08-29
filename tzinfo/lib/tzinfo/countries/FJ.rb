require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FJ < Country #:nodoc:
def initialize
  super
  set_code('FJ')
  set_name('Fiji')
  add_zone('Pacific/Fiji')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
