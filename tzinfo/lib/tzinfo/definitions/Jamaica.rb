require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Jamaica'
module TZInfo
module Definitions #:nodoc:
class Jamaica < Definitions::America::Jamaica #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
