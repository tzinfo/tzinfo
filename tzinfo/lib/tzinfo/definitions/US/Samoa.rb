require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Pago_Pago'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Samoa < Definitions::Pacific::Pago_Pago #:nodoc:
setup_linked
set_identifier('US/Samoa')
end
end
end
end
