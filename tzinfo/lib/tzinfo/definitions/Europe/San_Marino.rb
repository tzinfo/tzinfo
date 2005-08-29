require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Rome'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class San_Marino < Definitions::Europe::Rome #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
