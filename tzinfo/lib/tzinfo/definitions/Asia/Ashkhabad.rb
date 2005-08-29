require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Ashgabat'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Ashkhabad < Definitions::Asia::Ashgabat #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
