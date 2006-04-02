require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
class Zulu < Definitions::Etc::UTC #:nodoc:
set_identifier('Zulu')
end
end
end
