require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Riyadh87'
module TZInfo
module Definitions #:nodoc:
module Mideast #:nodoc:
class Riyadh87 < Definitions::Asia::Riyadh87 #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
