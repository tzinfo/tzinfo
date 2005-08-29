require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PA < Country #:nodoc:
def initialize
  super
  set_code('PA')
  set_name('Panama')
  add_zone('America/Panama')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
