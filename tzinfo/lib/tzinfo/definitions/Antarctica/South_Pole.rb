require 'tzinfo/timezone'
require 'tzinfo/definitions/Antarctica/McMurdo'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class South_Pole < Definitions::Antarctica::McMurdo #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
