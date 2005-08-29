require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Hong_Kong'
module TZInfo
module Definitions #:nodoc:
class Hongkong < Definitions::Asia::Hong_Kong #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
