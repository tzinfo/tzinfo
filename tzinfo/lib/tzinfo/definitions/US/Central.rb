require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Chicago'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Central < Definitions::America::Chicago #:nodoc:
setup_linked
set_identifier('US/Central')
end
end
end
end
