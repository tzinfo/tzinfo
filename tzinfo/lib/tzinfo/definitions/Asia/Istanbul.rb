require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Istanbul'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Istanbul < Definitions::Europe::Istanbul #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
