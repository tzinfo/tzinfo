require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SO < Country #:nodoc:
def initialize
  super
  set_code('SO')
  set_name('Somalia')
  add_zone('Africa/Mogadishu')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
