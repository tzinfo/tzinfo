require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Mexico_City'
module TZInfo
module Definitions #:nodoc:
module Mexico #:nodoc:
class General < Definitions::America::Mexico_City #:nodoc:
setup_linked
set_identifier('Mexico/General')
end
end
end
end
