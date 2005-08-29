require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Chatham'
module TZInfo
module Definitions #:nodoc:
class NZ__m__CHAT < Definitions::Pacific::Chatham #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
