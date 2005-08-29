require 'tzinfo/timezone'
require 'tzinfo/definitions/America/New_York'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Eastern < Definitions::America::New_York #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
