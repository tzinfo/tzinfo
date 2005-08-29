require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BH < Country #:nodoc:
def initialize
  super
  set_code('BH')
  set_name('Bahrain')
  add_zone('Asia/Bahrain')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
