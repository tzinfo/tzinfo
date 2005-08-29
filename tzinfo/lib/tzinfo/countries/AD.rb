require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AD < Country #:nodoc:
def initialize
  super
  set_code('AD')
  set_name('Andorra')
  add_zone('Europe/Andorra')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
