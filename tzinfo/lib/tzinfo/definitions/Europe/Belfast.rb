require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/London'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Belfast < Definitions::Europe::London #:nodoc:
setup_linked
set_identifier('Europe/Belfast')
end
end
end
end
