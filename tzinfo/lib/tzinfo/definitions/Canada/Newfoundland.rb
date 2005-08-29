require 'tzinfo/timezone'
require 'tzinfo/definitions/America/St_Johns'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Newfoundland < Definitions::America::St_Johns #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
