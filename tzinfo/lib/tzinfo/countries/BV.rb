require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BV < Country #:nodoc:
def initialize
  super
  set_code('BV')
  set_name('Bouvet Island')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
