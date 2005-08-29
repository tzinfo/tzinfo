require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ER < Country #:nodoc:
def initialize
  super
  set_code('ER')
  set_name('Eritrea')
  add_zone('Africa/Asmera')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
