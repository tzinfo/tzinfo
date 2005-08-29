require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Melbourne'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Victoria < Definitions::Australia::Melbourne #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
