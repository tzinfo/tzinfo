require 'tzinfo/timezone'
require 'tzinfo/definitions/America/New_York'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class EST5EDT < Definitions::America::New_York #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
