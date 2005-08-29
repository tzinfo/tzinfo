require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class UZ < Country #:nodoc:
def initialize
  super
  set_code('UZ')
  set_name('Uzbekistan')
  add_zone('Asia/Tashkent')
  add_zone('Asia/Samarkand')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
