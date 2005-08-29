require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Adak'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Aleutian < Definitions::America::Adak #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
