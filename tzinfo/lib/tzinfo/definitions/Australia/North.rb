require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Darwin'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class North < Definitions::Australia::Darwin #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
