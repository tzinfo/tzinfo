require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ZM < Country #:nodoc:
def initialize
  super
  set_code('ZM')
  set_name('Zambia')
  add_zone('Africa/Lusaka')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
