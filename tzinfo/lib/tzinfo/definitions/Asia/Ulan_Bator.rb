require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Ulaanbaatar'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Ulan_Bator < Definitions::Asia::Ulaanbaatar #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
