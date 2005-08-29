require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Chisinau'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Tiraspol < Definitions::Europe::Chisinau #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
