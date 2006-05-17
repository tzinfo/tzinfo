require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Anchorage'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Alaska < Definitions::America::Anchorage #:nodoc:
setup_linked
set_identifier('US/Alaska')
end
end
end
end
