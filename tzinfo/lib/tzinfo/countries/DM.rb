require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class DM < Country #:nodoc:
def initialize
  super
  set_code('DM')
  set_name('Dominica')
  add_zone('America/Dominica')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
