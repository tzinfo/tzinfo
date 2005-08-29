require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PE < Country #:nodoc:
def initialize
  super
  set_code('PE')
  set_name('Peru')
  add_zone('America/Lima')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
