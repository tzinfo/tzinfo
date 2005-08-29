require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class EE < Country #:nodoc:
def initialize
  super
  set_code('EE')
  set_name('Estonia')
  add_zone('Europe/Tallinn')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
