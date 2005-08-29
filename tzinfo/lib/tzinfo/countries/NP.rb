require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NP < Country #:nodoc:
def initialize
  super
  set_code('NP')
  set_name('Nepal')
  add_zone('Asia/Katmandu')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
