require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Broken_Hill'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Yancowinna < Definitions::Australia::Broken_Hill #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
