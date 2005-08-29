require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SN < Country #:nodoc:
def initialize
  super
  set_code('SN')
  set_name('Senegal')
  add_zone('Africa/Dakar')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
