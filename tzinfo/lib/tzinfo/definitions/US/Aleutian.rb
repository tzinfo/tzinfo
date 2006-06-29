require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Aleutian #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Aleutian', 'America/Adak'
      end
    end
  end
end
