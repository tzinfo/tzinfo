require 'tzinfo/timezone'
require 'tzinfo/definitions/Europe/Belgrade'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Ljubljana < Definitions::Europe::Belgrade #:nodoc:
setup_linked
set_identifier('Europe/Ljubljana')
end
end
end
end
