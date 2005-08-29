require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class HN < Country #:nodoc:
def initialize
  super
  set_code('HN')
  set_name('Honduras')
  add_zone('America/Tegucigalpa')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
