require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Indiana/Indianapolis'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Fort_Wayne < Definitions::America::Indiana::Indianapolis #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
