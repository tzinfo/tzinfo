require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Kentucky/Louisville'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Louisville < Definitions::America::Kentucky::Louisville #:nodoc:
setup_linked
set_identifier('America/Louisville')
end
end
end
end
