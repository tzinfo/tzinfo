require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class WF < Country #:nodoc:
def initialize
  super
  set_code('WF')
  set_name('Wallis & Futuna')
  add_zone('Pacific/Wallis')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
