require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AN < Country #:nodoc:
def initialize
  super
  set_code('AN')
  set_name('Netherlands Antilles')
  add_zone('America/Curacao')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
