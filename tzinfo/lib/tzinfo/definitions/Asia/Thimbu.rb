require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Thimphu'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Thimbu < Definitions::Asia::Thimphu #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
