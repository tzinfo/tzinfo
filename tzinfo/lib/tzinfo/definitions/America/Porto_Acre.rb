require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Rio_Branco'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Porto_Acre < Definitions::America::Rio_Branco #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
