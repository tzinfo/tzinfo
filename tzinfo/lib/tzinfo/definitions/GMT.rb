require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/GMT'
module TZInfo
module Definitions #:nodoc:
class GMT < Definitions::Etc::GMT #:nodoc:
setup_linked
set_identifier('GMT')
end
end
end
