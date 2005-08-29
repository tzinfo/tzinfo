require 'tzinfo/timezone'
require 'tzinfo/definitions/Atlantic/Reykjavik'
module TZInfo
module Definitions #:nodoc:
class Iceland < Definitions::Atlantic::Reykjavik #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
