require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Indiana/Indianapolis'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Indianapolis < Definitions::America::Indiana::Indianapolis #:nodoc:
setup_linked
set_identifier('America/Indianapolis')
end
end
end
end
