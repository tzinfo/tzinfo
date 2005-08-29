require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KW < Country #:nodoc:
def initialize
  super
  set_code('KW')
  set_name('Kuwait')
  add_zone('Asia/Kuwait')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
