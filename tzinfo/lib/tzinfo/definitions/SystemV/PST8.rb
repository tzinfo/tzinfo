require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Pitcairn'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class PST8 < Definitions::Pacific::Pitcairn #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
