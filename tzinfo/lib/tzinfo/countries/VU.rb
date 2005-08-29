require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class VU < Country #:nodoc:
def initialize
  super
  set_code('VU')
  set_name('Vanuatu')
  add_zone('Pacific/Efate')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
