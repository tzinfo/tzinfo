require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Belgrade'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Sarajevo < Definitions::Europe::Belgrade #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
