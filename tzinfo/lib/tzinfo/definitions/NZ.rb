require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Auckland'
module TZInfo
module Definitions #:nodoc:
class NZ < Definitions::Pacific::Auckland #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
