require 'tzinfo/timezone'
require 'tzinfo/definitions/Africa/Cairo'
module TZInfo
module Definitions #:nodoc:
class Egypt < Definitions::Africa::Cairo #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
