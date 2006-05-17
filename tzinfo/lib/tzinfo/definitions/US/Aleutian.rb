require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Adak'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Aleutian < Definitions::America::Adak #:nodoc:
setup_linked
set_identifier('US/Aleutian')
end
end
end
end
