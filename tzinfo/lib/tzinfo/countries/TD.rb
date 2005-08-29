require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TD < Country #:nodoc:
def initialize
  super
  set_code('TD')
  set_name('Chad')
  add_zone('Africa/Ndjamena')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
