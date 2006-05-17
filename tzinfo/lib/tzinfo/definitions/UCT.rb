require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UCT'
module TZInfo
module Definitions #:nodoc:
class UCT < Definitions::Etc::UCT #:nodoc:
setup_linked
set_identifier('UCT')
end
end
end
