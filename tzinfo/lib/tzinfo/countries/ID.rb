require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ID < Country #:nodoc:
def initialize
  super
  set_code('ID')
  set_name('Indonesia')
  add_zone('Asia/Makassar')
  add_zone('Asia/Pontianak')
  add_zone('Asia/Jayapura')
  add_zone('Asia/Jakarta')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
