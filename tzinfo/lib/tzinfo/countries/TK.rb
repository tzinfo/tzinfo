require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TK < Country #:nodoc:
def initialize
  super
  set_code('TK')
  set_name('Tokelau')
  add_zone('Pacific/Fakaofo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
