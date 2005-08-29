require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ST < Country #:nodoc:
def initialize
  super
  set_code('ST')
  set_name('Sao Tome & Principe')
  add_zone('Africa/Sao_Tome')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
