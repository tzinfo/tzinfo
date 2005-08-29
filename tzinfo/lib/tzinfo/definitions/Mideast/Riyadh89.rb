require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Riyadh89'
module TZInfo
module Definitions #:nodoc:
module Mideast #:nodoc:
class Riyadh89 < Definitions::Asia::Riyadh89 #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
