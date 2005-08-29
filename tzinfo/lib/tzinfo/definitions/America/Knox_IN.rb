require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Indiana/Knox'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Knox_IN < Definitions::America::Indiana::Knox #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
