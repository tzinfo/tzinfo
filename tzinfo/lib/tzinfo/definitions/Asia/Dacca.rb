require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Dhaka'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dacca < Definitions::Asia::Dhaka #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
