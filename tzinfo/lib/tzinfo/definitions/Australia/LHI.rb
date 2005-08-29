require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Lord_Howe'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class LHI < Definitions::Australia::Lord_Howe #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
