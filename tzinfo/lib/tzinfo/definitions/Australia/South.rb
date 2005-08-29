require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Adelaide'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class South < Definitions::Australia::Adelaide #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
