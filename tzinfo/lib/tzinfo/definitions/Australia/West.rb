require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Perth'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class West < Definitions::Australia::Perth #:nodoc:
setup_linked
set_identifier('Australia/West')
end
end
end
end
