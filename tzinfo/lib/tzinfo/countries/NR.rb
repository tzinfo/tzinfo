require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NR < Country #:nodoc:
def initialize
  super
  set_code('NR')
  set_name('Nauru')
  add_zone('Pacific/Nauru')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
