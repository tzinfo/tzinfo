require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Honolulu'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Hawaii < Definitions::Pacific::Honolulu #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
