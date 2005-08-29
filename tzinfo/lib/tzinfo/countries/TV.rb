require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TV < Country #:nodoc:
def initialize
  super
  set_code('TV')
  set_name('Tuvalu')
  add_zone('Pacific/Funafuti')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
