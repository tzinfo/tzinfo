require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FM < Country #:nodoc:
def initialize
  super
  set_code('FM')
  set_name('Micronesia')
  add_zone('Pacific/Kosrae')
  add_zone('Pacific/Truk')
  add_zone('Pacific/Ponape')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
