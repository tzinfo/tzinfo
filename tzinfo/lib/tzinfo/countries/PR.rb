require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PR < Country #:nodoc:
def initialize
  super
  set_code('PR')
  set_name('Puerto Rico')
  add_zone('America/Puerto_Rico')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
