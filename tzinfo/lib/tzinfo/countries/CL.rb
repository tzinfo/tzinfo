require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CL < Country #:nodoc:
def initialize
  super
  set_code('CL')
  set_name('Chile')
  add_zone('Pacific/Easter')
  add_zone('America/Santiago')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
