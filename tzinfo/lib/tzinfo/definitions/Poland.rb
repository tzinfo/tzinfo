require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Warsaw'
module TZInfo
module Definitions #:nodoc:
class Poland < Definitions::Europe::Warsaw #:nodoc:
setup_linked
set_identifier('Poland')
end
end
end
