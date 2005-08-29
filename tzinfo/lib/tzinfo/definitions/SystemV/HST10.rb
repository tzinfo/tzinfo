require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Honolulu'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class HST10 < Definitions::Pacific::Honolulu #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
