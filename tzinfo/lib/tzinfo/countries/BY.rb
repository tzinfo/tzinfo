require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BY < Country #:nodoc:
def initialize
  super
  set_code('BY')
  set_name('Belarus')
  add_zone('Europe/Minsk')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
