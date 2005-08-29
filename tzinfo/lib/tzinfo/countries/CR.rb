require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CR < Country #:nodoc:
def initialize
  super
  set_code('CR')
  set_name('Costa Rica')
  add_zone('America/Costa_Rica')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
