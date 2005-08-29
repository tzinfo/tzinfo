require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Winnipeg'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Central < Definitions::America::Winnipeg #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
