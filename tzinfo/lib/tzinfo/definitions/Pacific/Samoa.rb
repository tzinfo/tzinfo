require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Pago_Pago'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Samoa < Definitions::Pacific::Pago_Pago #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
