require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AI < Country #:nodoc:
def initialize
  super
  set_code('AI')
  set_name('Anguilla')
  add_zone('America/Anguilla')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
