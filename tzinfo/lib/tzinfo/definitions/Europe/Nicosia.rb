require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Nicosia'
module TZInfo
module Definitions #:nodoc:
module Europe #:nodoc:
class Nicosia < Definitions::Asia::Nicosia #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
