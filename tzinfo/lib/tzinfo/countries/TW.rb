require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TW < Country #:nodoc:
def initialize
  super
  set_code('TW')
  set_name('Taiwan')
  add_zone('Asia/Taipei')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
