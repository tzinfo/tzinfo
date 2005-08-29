require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Sao_Paulo'
module TZInfo
module Definitions #:nodoc:
module Brazil #:nodoc:
class East < Definitions::America::Sao_Paulo #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
