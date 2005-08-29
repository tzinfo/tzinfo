require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CI < Country #:nodoc:
def initialize
  super
  set_code('CI')
  set_name('Cote dIvoireIvoire')
  add_zone('Africa/Abidjan')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
