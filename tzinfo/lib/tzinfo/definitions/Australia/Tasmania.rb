require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Hobart'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Tasmania < Definitions::Australia::Hobart #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
