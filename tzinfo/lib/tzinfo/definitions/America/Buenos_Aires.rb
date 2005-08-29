require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Argentina/Buenos_Aires'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Buenos_Aires < Definitions::America::Argentina::Buenos_Aires #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
