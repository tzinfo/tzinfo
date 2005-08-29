require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class HM < Country #:nodoc:
def initialize
  super
  set_code('HM')
  set_name('Heard Island & McDonald Islands')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
