require 'tzinfo/timezone'
require 'tzinfo/definitions/Atlantic/Reykjavik'
module TZInfo
module Definitions #:nodoc:
class Iceland < Definitions::Atlantic::Reykjavik #:nodoc:
setup_linked
set_identifier('Iceland')
end
end
end
