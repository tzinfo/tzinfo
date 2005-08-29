require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BJ < Country #:nodoc:
def initialize
  super
  set_code('BJ')
  set_name('Benin')
  add_zone('Africa/Porto-Novo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
