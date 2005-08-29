require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MP < Country #:nodoc:
def initialize
  super
  set_code('MP')
  set_name('Northern Mariana Islands')
  add_zone('Pacific/Saipan')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
