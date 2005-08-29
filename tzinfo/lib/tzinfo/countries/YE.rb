require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class YE < Country #:nodoc:
def initialize
  super
  set_code('YE')
  set_name('Yemen')
  add_zone('Asia/Aden')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
