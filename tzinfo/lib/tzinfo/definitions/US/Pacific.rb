require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Los_Angeles'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Pacific < Definitions::America::Los_Angeles #:nodoc:
set_identifier('US/Pacific')
end
end
end
end
