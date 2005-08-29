require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FO < Country #:nodoc:
def initialize
  super
  set_code('FO')
  set_name('Faeroe Islands')
  add_zone('Atlantic/Faeroe')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
