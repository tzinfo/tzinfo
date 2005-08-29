require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Sydney'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class ACT < Definitions::Australia::Sydney #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
