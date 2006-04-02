require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
class UTC < Definitions::Etc::UTC #:nodoc:
set_identifier('UTC')
end
end
end
