require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GB < Country #:nodoc:
def initialize
  super
  set_code('GB')
  set_name('Britain (UK)')
  add_zone('Europe/London')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
