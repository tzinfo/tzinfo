require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MY < Country #:nodoc:
def initialize
  super
  set_code('MY')
  set_name('Malaysia')
  add_zone('Asia/Kuching')
  add_zone('Asia/Kuala_Lumpur')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
