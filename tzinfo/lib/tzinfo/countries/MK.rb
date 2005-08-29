require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MK < Country #:nodoc:
def initialize
  super
  set_code('MK')
  set_name('Macedonia')
  add_zone('Europe/Skopje')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
