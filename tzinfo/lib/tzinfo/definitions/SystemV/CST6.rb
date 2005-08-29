require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Regina'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class CST6 < Definitions::America::Regina #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
