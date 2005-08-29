require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AQ < Country #:nodoc:
def initialize
  super
  set_code('AQ')
  set_name('Antarctica')
  add_zone('Antarctica/Davis')
  add_zone('Antarctica/Mawson')
  add_zone('Antarctica/Syowa')
  add_zone('Antarctica/Casey')
  add_zone('Antarctica/South_Pole')
  add_zone('Antarctica/Vostok')
  add_zone('Antarctica/Rothera')
  add_zone('Antarctica/McMurdo')
  add_zone('Antarctica/DumontDUrville')
  add_zone('Antarctica/Palmer')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
