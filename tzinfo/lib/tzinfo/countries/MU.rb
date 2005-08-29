require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MU < Country #:nodoc:
def initialize
  super
  set_code('MU')
  set_name('Mauritius')
  add_zone('Indian/Mauritius')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
