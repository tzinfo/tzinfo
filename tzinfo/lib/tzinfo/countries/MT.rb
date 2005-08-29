require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MT < Country #:nodoc:
def initialize
  super
  set_code('MT')
  set_name('Malta')
  add_zone('Europe/Malta')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
