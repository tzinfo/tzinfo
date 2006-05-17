require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Taipei'
module TZInfo
module Definitions #:nodoc:
class ROC < Definitions::Asia::Taipei #:nodoc:
setup_linked
set_identifier('ROC')
end
end
end
