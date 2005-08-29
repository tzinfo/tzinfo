require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MR < Country #:nodoc:
def initialize
  super
  set_code('MR')
  set_name('Mauritania')
  add_zone('Africa/Nouakchott')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
