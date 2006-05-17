require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
class Zulu < Definitions::Etc::UTC #:nodoc:
setup_linked
set_identifier('Zulu')
end
end
end
