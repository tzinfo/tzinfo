require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class VI < Country #:nodoc:
def initialize
  super
  set_code('VI')
  set_name('Virgin Islands (US)')
  add_zone('America/St_Thomas')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
