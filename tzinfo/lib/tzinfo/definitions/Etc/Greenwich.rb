require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/GMT'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class Greenwich < Definitions::Etc::GMT #:nodoc:
set_identifier('Etc/Greenwich')
end
end
end
end
