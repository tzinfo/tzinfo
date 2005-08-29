require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MG < Country #:nodoc:
def initialize
  super
  set_code('MG')
  set_name('Madagascar')
  add_zone('Indian/Antananarivo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
