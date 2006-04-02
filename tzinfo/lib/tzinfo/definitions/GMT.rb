require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/GMT'
module TZInfo
module Definitions #:nodoc:
class GMT < Definitions::Etc::GMT #:nodoc:
set_identifier('GMT')
end
end
end
