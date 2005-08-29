require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MQ < Country #:nodoc:
def initialize
  super
  set_code('MQ')
  set_name('Martinique')
  add_zone('America/Martinique')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
