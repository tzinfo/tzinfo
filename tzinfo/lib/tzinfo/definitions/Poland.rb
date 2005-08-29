require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Warsaw'
module TZInfo
module Definitions #:nodoc:
class Poland < Definitions::Europe::Warsaw #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
