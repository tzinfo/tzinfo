require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SJ < Country #:nodoc:
def initialize
  super
  set_code('SJ')
  set_name('Svalbard & Jan Mayen')
  add_zone('Arctic/Longyearbyen')
  add_zone('Atlantic/Jan_Mayen')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
