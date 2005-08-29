require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class QA < Country #:nodoc:
def initialize
  super
  set_code('QA')
  set_name('Qatar')
  add_zone('Asia/Qatar')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
