require 'tzinfo/timezone'
require 'tzinfo/definitions/Australia/Perth'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class West < Definitions::Australia::Perth #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
