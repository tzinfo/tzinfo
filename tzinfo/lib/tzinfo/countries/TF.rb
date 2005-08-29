require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TF < Country #:nodoc:
def initialize
  super
  set_code('TF')
  set_name('French Southern & Antarctic Lands')
  add_zone('Indian/Kerguelen')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
