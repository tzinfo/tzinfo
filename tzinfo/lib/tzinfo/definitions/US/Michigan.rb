require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Detroit'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Michigan < Definitions::America::Detroit #:nodoc:
setup_linked
set_identifier('US/Michigan')
end
end
end
end
