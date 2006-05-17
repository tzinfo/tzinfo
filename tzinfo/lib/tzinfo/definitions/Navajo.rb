require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Denver'
module TZInfo
module Definitions #:nodoc:
class Navajo < Definitions::America::Denver #:nodoc:
setup_linked
set_identifier('Navajo')
end
end
end
