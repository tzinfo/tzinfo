require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Jamaica'
module TZInfo
module Definitions #:nodoc:
class Jamaica < Definitions::America::Jamaica #:nodoc:
setup_linked
set_identifier('Jamaica')
end
end
end
