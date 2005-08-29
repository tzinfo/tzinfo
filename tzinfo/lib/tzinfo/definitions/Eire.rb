require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Dublin'
module TZInfo
module Definitions #:nodoc:
class Eire < Definitions::Europe::Dublin #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
