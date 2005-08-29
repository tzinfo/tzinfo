require 'tzinfo/timezone'
require 'tzinfo/definitions/Africa/Bamako'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Timbuktu < Definitions::Africa::Bamako #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
