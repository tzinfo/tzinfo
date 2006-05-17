require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Tokyo'
module TZInfo
module Definitions #:nodoc:
class Japan < Definitions::Asia::Tokyo #:nodoc:
setup_linked
set_identifier('Japan')
end
end
end
