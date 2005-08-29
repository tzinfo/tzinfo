require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CF < Country #:nodoc:
def initialize
  super
  set_code('CF')
  set_name('Central African Rep.')
  add_zone('Africa/Bangui')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
