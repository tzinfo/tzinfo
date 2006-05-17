require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Sydney'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Canberra < Definitions::Australia::Sydney #:nodoc:
setup_linked
set_identifier('Australia/Canberra')
end
end
end
end
