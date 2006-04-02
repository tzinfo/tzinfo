require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/GMT'
module TZInfo
module Definitions #:nodoc:
class Greenwich < Definitions::Etc::GMT #:nodoc:
set_identifier('Greenwich')
end
end
end
