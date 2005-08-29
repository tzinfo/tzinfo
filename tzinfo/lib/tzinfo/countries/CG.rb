require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CG < Country #:nodoc:
def initialize
  super
  set_code('CG')
  set_name('Congo (Rep.)')
  add_zone('Africa/Brazzaville')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
