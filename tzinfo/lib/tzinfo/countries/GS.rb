require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GS < Country #:nodoc:
def initialize
  super
  set_code('GS')
  set_name('South Georgia & the South Sandwich Islands')
  add_zone('Atlantic/South_Georgia')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
