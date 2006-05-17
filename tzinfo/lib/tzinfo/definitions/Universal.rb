require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
class Universal < Definitions::Etc::UTC #:nodoc:
setup_linked
set_identifier('Universal')
end
end
end
