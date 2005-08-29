require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SM < Country #:nodoc:
def initialize
  super
  set_code('SM')
  set_name('San Marino')
  add_zone('Europe/San_Marino')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
