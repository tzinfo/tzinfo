require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Seoul'
module TZInfo
module Definitions #:nodoc:
class ROK < Definitions::Asia::Seoul #:nodoc:
setup_linked
set_identifier('ROK')
end
end
end
