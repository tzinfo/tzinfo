require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Auckland'
module TZInfo
module Definitions #:nodoc:
class NZ < Definitions::Pacific::Auckland #:nodoc:
setup_linked
set_identifier('NZ')
end
end
end
