require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Panama'
module TZInfo
module Definitions #:nodoc:
class EST < Definitions::America::Panama #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
