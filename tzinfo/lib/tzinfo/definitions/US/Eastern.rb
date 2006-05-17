require 'tzinfo/timezone'
require 'tzinfo/definitions/America/New_York'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Eastern < Definitions::America::New_York #:nodoc:
setup_linked
set_identifier('US/Eastern')
end
end
end
end
