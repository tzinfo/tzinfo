require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Gambier'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class YST9 < Definitions::Pacific::Gambier #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
