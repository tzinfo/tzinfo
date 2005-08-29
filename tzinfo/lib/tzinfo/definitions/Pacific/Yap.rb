require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Truk'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Yap < Definitions::Pacific::Truk #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
