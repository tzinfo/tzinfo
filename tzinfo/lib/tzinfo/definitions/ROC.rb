require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Taipei'
module TZInfo
module Definitions #:nodoc:
class ROC < Definitions::Asia::Taipei #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
