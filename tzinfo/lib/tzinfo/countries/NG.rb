require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NG < Country #:nodoc:
def initialize
  super
  set_code('NG')
  set_name('Nigeria')
  add_zone('Africa/Lagos')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
