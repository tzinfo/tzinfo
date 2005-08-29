require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Tehran'
module TZInfo
module Definitions #:nodoc:
class Iran < Definitions::Asia::Tehran #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
