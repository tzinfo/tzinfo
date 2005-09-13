require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
class Universal < Definitions::Etc::UTC #:nodoc:
set_identifier('Universal')
end
end
end
