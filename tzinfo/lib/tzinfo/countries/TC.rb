require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TC < Country #:nodoc:
def initialize
  super
  set_code('TC')
  set_name('Turks & Caicos Is')
  add_zone('America/Grand_Turk')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
