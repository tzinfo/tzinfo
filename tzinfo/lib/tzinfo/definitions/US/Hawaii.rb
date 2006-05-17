require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Honolulu'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Hawaii < Definitions::Pacific::Honolulu #:nodoc:
setup_linked
set_identifier('US/Hawaii')
end
end
end
end
