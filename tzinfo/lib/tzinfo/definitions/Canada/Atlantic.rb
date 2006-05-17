require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Halifax'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Atlantic < Definitions::America::Halifax #:nodoc:
setup_linked
set_identifier('Canada/Atlantic')
end
end
end
end
