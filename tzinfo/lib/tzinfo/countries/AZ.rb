require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AZ < Country #:nodoc:
def initialize
  super
  set_code('AZ')
  set_name('Azerbaijan')
  add_zone('Asia/Baku')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
