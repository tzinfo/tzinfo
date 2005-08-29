require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Denver'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Mountain < Definitions::America::Denver #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
