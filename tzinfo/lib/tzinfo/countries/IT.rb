require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IT < Country #:nodoc:
def initialize
  super
  set_code('IT')
  set_name('Italy')
  add_zone('Europe/Rome')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
