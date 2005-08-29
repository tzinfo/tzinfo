require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Prague'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Bratislava < Definitions::Europe::Prague #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
