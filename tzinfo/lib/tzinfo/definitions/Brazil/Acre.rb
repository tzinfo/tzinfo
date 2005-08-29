require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Rio_Branco'
module TZInfo
module Definitions #:nodoc:
module Brazil #:nodoc:
class Acre < Definitions::America::Rio_Branco #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
