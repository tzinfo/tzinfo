require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TJ < Country #:nodoc:
def initialize
  super
  set_code('TJ')
  set_name('Tajikistan')
  add_zone('Asia/Dushanbe')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
