require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/London'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Belfast < Definitions::Europe::London #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
