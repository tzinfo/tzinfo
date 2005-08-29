require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BA < Country #:nodoc:
def initialize
  super
  set_code('BA')
  set_name('Bosnia & Herzegovina')
  add_zone('Europe/Sarajevo')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
