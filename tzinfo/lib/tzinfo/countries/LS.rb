require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LS < Country #:nodoc:
def initialize
  super
  set_code('LS')
  set_name('Lesotho')
  add_zone('Africa/Maseru')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
