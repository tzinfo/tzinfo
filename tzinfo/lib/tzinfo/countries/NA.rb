require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NA < Country #:nodoc:
def initialize
  super
  set_code('NA')
  set_name('Namibia')
  add_zone('Africa/Windhoek')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
