require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PS < Country #:nodoc:
def initialize
  super
  set_code('PS')
  set_name('Palestine')
  add_zone('Asia/Gaza')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
