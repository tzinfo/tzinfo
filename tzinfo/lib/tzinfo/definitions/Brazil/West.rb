require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Manaus'
module TZInfo
module Definitions #:nodoc:
module Brazil #:nodoc:
class West < Definitions::America::Manaus #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
