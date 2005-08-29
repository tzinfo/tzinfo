require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Jerusalem'
module TZInfo
module Definitions #:nodoc:
class Israel < Definitions::Asia::Jerusalem #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
