require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Istanbul'
module TZInfo
module Definitions #:nodoc:
class Turkey < Definitions::Europe::Istanbul #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
