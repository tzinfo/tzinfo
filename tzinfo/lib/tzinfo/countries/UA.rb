require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class UA < Country #:nodoc:
def initialize
  super
  set_code('UA')
  set_name('Ukraine')
  add_zone('Europe/Kiev')
  add_zone('Europe/Simferopol')
  add_zone('Europe/Uzhgorod')
  add_zone('Europe/Zaporozhye')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
