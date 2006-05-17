require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Istanbul'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Istanbul < Definitions::Europe::Istanbul #:nodoc:
setup_linked
set_identifier('Asia/Istanbul')
end
end
end
end
