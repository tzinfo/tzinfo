require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class JP < Country #:nodoc:
def initialize
  super
  set_code('JP')
  set_name('Japan')
  add_zone('Asia/Tokyo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
