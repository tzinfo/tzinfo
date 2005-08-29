require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Seoul'
module TZInfo
module Definitions #:nodoc:
class ROK < Definitions::Asia::Seoul #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
