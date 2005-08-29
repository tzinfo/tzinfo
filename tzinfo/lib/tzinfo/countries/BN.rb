require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BN < Country #:nodoc:
def initialize
  super
  set_code('BN')
  set_name('Brunei')
  add_zone('Asia/Brunei')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
