require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class DJ < Country #:nodoc:
def initialize
  super
  set_code('DJ')
  set_name('Djibouti')
  add_zone('Africa/Djibouti')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
