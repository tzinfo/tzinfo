require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NZ < Country #:nodoc:
def initialize
  super
  set_code('NZ')
  set_name('New Zealand')
  add_zone('Pacific/Chatham')
  add_zone('Pacific/Auckland')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
