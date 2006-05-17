require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Toronto'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Eastern < Definitions::America::Toronto #:nodoc:
setup_linked
set_identifier('Canada/Eastern')
end
end
end
end
