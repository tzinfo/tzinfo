require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GI < Country #:nodoc:
def initialize
  super
  set_code('GI')
  set_name('Gibraltar')
  add_zone('Europe/Gibraltar')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
