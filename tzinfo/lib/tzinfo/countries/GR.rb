require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GR < Country #:nodoc:
def initialize
  super
  set_code('GR')
  set_name('Greece')
  add_zone('Europe/Athens')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
