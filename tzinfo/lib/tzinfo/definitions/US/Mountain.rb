require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Denver'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Mountain < Definitions::America::Denver #:nodoc:
set_identifier('US/Mountain')
end
end
end
end
