require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PL < Country #:nodoc:
def initialize
  super
  set_code('PL')
  set_name('Poland')
  add_zone('Europe/Warsaw')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
