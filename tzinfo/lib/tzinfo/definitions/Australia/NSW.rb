require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Sydney'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class NSW < Definitions::Australia::Sydney #:nodoc:
setup_linked
set_identifier('Australia/NSW')
end
end
end
end
