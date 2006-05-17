require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Prague'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Bratislava < Definitions::Europe::Prague #:nodoc:
setup_linked
set_identifier('Europe/Bratislava')
end
end
end
end
