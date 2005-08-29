require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MC < Country #:nodoc:
def initialize
  super
  set_code('MC')
  set_name('Monaco')
  add_zone('Europe/Monaco')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
