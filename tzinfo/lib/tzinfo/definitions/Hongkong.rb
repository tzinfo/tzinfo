require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Hong_Kong'
module TZInfo
module Definitions #:nodoc:
class Hongkong < Definitions::Asia::Hong_Kong #:nodoc:
setup_linked
set_identifier('Hongkong')
end
end
end
