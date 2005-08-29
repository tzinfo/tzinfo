require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AW < Country #:nodoc:
def initialize
  super
  set_code('AW')
  set_name('Aruba')
  add_zone('America/Aruba')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
