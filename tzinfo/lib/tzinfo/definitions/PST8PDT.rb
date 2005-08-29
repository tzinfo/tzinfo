require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Los_Angeles'
module TZInfo
module Definitions #:nodoc:
class PST8PDT < Definitions::America::Los_Angeles #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
