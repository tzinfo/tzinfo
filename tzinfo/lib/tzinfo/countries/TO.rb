require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TO < Country #:nodoc:
def initialize
  super
  set_code('TO')
  set_name('Tonga')
  add_zone('Pacific/Tongatapu')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
