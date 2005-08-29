require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AS < Country #:nodoc:
def initialize
  super
  set_code('AS')
  set_name('Samoa (American)')
  add_zone('Pacific/Pago_Pago')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
