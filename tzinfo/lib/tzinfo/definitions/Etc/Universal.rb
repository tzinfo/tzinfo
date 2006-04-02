require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class Universal < Definitions::Etc::UTC #:nodoc:
set_identifier('Etc/Universal')
end
end
end
end
