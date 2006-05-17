require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class Zulu < Definitions::Etc::UTC #:nodoc:
setup_linked
set_identifier('Etc/Zulu')
end
end
end
end
