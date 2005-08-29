require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NU < Country #:nodoc:
def initialize
  super
  set_code('NU')
  set_name('Niue')
  add_zone('Pacific/Niue')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
