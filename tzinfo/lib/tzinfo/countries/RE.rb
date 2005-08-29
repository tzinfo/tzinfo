require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class RE < Country #:nodoc:
def initialize
  super
  set_code('RE')
  set_name('Reunion')
  add_zone('Indian/Reunion')
  zones_added
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
