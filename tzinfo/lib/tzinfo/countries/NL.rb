require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NL < Country #:nodoc:
def initialize
  super
  set_code('NL')
  set_name('Netherlands')
  add_zone('Europe/Amsterdam')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
