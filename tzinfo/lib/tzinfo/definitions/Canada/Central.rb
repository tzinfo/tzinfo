require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Winnipeg'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Central < Definitions::America::Winnipeg #:nodoc:
setup_linked
set_identifier('Canada/Central')
end
end
end
end
