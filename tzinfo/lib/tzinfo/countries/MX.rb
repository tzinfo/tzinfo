require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MX < Country #:nodoc:
def initialize
  super
  set_code('MX')
  set_name('Mexico')
  add_zone('America/Mazatlan')
  add_zone('America/Cancun')
  add_zone('America/Hermosillo')
  add_zone('America/Merida')
  add_zone('America/Chihuahua')
  add_zone('America/Tijuana')
  add_zone('America/Monterrey')
  add_zone('America/Mexico_City')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
