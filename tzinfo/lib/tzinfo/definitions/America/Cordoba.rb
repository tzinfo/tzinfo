require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Argentina/Cordoba'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Cordoba < Definitions::America::Argentina::Cordoba #:nodoc:
setup_linked
set_identifier('America/Cordoba')
end
end
end
end
