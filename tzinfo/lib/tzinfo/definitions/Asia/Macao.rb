require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Macau'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Macao < Definitions::Asia::Macau #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
