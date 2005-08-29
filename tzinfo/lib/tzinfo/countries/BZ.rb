require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BZ < Country #:nodoc:
def initialize
  super
  set_code('BZ')
  set_name('Belize')
  add_zone('America/Belize')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
