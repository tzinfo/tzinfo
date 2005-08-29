require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Jerusalem'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Tel_Aviv < Definitions::Asia::Jerusalem #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
