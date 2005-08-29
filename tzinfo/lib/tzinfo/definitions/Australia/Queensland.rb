require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Brisbane'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Queensland < Definitions::Australia::Brisbane #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
