require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TH < Country #:nodoc:
def initialize
  super
  set_code('TH')
  set_name('Thailand')
  add_zone('Asia/Bangkok')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
