require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NF < Country #:nodoc:
def initialize
  super
  set_code('NF')
  set_name('Norfolk Island')
  add_zone('Pacific/Norfolk')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
