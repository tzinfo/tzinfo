require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Shanghai'
module TZInfo
module Definitions #:nodoc:
class PRC < Definitions::Asia::Shanghai #:nodoc:
setup_linked
set_identifier('PRC')
end
end
end
