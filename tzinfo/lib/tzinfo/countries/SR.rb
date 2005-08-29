require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SR < Country #:nodoc:
def initialize
  super
  set_code('SR')
  set_name('Suriname')
  add_zone('America/Paramaribo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
