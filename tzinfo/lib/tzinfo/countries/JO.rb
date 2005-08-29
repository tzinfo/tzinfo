require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class JO < Country #:nodoc:
def initialize
  super
  set_code('JO')
  set_name('Jordan')
  add_zone('Asia/Amman')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
