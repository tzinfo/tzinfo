require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Vancouver'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Pacific < Definitions::America::Vancouver #:nodoc:
setup_linked
set_identifier('Canada/Pacific')
end
end
end
end
