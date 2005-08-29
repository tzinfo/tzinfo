require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AE < Country #:nodoc:
def initialize
  super
  set_code('AE')
  set_name('United Arab Emirates')
  add_zone('Asia/Dubai')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
