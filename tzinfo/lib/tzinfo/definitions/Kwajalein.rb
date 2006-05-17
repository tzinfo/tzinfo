require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Kwajalein'
module TZInfo
module Definitions #:nodoc:
class Kwajalein < Definitions::Pacific::Kwajalein #:nodoc:
setup_linked
set_identifier('Kwajalein')
end
end
end
