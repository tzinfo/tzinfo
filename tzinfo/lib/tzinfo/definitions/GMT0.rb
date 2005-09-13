require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/GMT'
module TZInfo
module Definitions #:nodoc:
class GMT0 < Definitions::Etc::GMT #:nodoc:
set_identifier('GMT0')
end
end
end
