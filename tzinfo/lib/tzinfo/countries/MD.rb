require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MD < Country #:nodoc:
def initialize
  super
  set_code('MD')
  set_name('Moldova')
  add_zone('Europe/Chisinau')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
