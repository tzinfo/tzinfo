require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Singapore'
module TZInfo
module Definitions #:nodoc:
class Singapore < Definitions::Asia::Singapore #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
