require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GU < Country #:nodoc:
def initialize
  super
  set_code('GU')
  set_name('Guam')
  add_zone('Pacific/Guam')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
