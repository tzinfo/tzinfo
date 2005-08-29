require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Noronha'
module TZInfo
module Definitions #:nodoc:
module Brazil #:nodoc:
class DeNoronha < Definitions::America::Noronha #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
