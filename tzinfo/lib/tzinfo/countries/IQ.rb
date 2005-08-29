require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IQ < Country #:nodoc:
def initialize
  super
  set_code('IQ')
  set_name('Iraq')
  add_zone('Asia/Baghdad')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
