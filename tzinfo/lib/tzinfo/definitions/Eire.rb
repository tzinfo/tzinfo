require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Dublin'
module TZInfo
module Definitions #:nodoc:
class Eire < Definitions::Europe::Dublin #:nodoc:
setup_linked
set_identifier('Eire')
end
end
end
