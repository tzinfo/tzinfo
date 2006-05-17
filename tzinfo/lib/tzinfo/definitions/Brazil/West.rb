require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Manaus'
module TZInfo
module Definitions #:nodoc:
module Brazil #:nodoc:
class West < Definitions::America::Manaus #:nodoc:
setup_linked
set_identifier('Brazil/West')
end
end
end
end
