require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Shanghai'
module TZInfo
module Definitions #:nodoc:
class PRC < Definitions::Asia::Shanghai #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
