require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MO < Country #:nodoc:
def initialize
  super
  set_code('MO')
  set_name('Macau')
  add_zone('Asia/Macau')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
