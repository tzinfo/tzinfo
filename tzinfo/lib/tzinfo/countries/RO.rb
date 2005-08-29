require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class RO < Country #:nodoc:
def initialize
  super
  set_code('RO')
  set_name('Romania')
  add_zone('Europe/Bucharest')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
