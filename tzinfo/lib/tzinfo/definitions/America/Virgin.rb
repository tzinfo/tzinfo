require 'tzinfo/timezone'
require 'tzinfo/definitions/America/St_Thomas'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Virgin < Definitions::America::St_Thomas #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
