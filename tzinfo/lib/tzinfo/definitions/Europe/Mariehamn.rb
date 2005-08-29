require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Helsinki'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Mariehamn < Definitions::Europe::Helsinki #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
