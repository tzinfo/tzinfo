require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class JM < Country #:nodoc:
def initialize
  super
  set_code('JM')
  set_name('Jamaica')
  add_zone('America/Jamaica')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
