require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Riyadh88'
module TZInfo
module Definitions #:nodoc:
module Mideast #:nodoc:
class Riyadh88 < Definitions::Asia::Riyadh88 #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
