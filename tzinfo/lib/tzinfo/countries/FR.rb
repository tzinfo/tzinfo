require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FR < Country #:nodoc:
def initialize
  super
  set_code('FR')
  set_name('France')
  add_zone('Europe/Paris')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
