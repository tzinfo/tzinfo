require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class LC < Country #:nodoc:
def initialize
  super
  set_code('LC')
  set_name('St Lucia')
  add_zone('America/St_Lucia')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
