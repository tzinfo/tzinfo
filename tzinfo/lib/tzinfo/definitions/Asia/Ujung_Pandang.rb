require 'tzinfo/timezone'
require 'tzinfo/definitions/Asia/Makassar'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Ujung_Pandang < Definitions::Asia::Makassar #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
