require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Oslo'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class Jan_Mayen < Definitions::Europe::Oslo #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
