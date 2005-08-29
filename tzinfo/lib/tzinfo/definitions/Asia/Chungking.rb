require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Chongqing'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Chungking < Definitions::Asia::Chongqing #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
