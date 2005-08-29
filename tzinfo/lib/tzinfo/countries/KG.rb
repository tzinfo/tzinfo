require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KG < Country #:nodoc:
def initialize
  super
  set_code('KG')
  set_name('Kyrgyzstan')
  add_zone('Asia/Bishkek')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
