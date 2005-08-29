require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class OM < Country #:nodoc:
def initialize
  super
  set_code('OM')
  set_name('Oman')
  add_zone('Asia/Muscat')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
