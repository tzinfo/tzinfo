require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Kwajalein'
module TZInfo
module Definitions #:nodoc:
class Kwajalein < Definitions::Pacific::Kwajalein #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
