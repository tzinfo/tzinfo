require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/London'
module TZInfo
module Definitions #:nodoc:
class GB__m__Eire < Definitions::Europe::London #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
