require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Lisbon'
module TZInfo
module Definitions #:nodoc:
class Portugal < Definitions::Europe::Lisbon #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
