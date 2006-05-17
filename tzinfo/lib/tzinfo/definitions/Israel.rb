require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Jerusalem'
module TZInfo
module Definitions #:nodoc:
class Israel < Definitions::Asia::Jerusalem #:nodoc:
setup_linked
set_identifier('Israel')
end
end
end
