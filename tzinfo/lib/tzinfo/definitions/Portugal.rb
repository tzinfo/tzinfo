require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Lisbon'
module TZInfo
module Definitions #:nodoc:
class Portugal < Definitions::Europe::Lisbon #:nodoc:
setup_linked
set_identifier('Portugal')
end
end
end
