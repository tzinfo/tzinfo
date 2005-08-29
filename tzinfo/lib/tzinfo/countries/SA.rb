require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SA < Country #:nodoc:
def initialize
  super
  set_code('SA')
  set_name('Saudi Arabia')
  add_zone('Asia/Riyadh')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
