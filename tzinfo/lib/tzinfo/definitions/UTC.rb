require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
class UTC < Definitions::Etc::UTC #:nodoc:
setup_linked
set_identifier('UTC')
end
end
end
