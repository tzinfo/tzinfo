require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Istanbul'
module TZInfo
module Definitions #:nodoc:
class Turkey < Definitions::Europe::Istanbul #:nodoc:
setup_linked
set_identifier('Turkey')
end
end
end
