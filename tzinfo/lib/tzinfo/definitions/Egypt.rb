require 'tzinfo/timezone'
require 'tzinfo/definitions/Africa/Cairo'
module TZInfo
module Definitions #:nodoc:
class Egypt < Definitions::Africa::Cairo #:nodoc:
setup_linked
set_identifier('Egypt')
end
end
end
