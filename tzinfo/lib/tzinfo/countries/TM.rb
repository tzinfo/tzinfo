require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TM < Country #:nodoc:
def initialize
  super
  set_code('TM')
  set_name('Turkmenistan')
  add_zone('Asia/Ashgabat')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
