require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KN < Country #:nodoc:
def initialize
  super
  set_code('KN')
  set_name('St Kitts & Nevis')
  add_zone('America/St_Kitts')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
