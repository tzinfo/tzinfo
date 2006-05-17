require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Rome'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Vatican < Definitions::Europe::Rome #:nodoc:
setup_linked
set_identifier('Europe/Vatican')
end
end
end
end
