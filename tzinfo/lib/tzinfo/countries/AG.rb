require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AG < Country #:nodoc:
def initialize
  super
  set_code('AG')
  set_name('Antigua & Barbuda')
  add_zone('America/Antigua')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
