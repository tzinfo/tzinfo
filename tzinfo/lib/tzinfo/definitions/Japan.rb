require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Tokyo'
module TZInfo
module Definitions #:nodoc:
class Japan < Definitions::Asia::Tokyo #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
