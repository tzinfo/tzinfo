require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Indianapolis'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class EST5 < Definitions::America::Indianapolis #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
