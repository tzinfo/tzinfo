require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module West #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/West', 'Australia/Perth'
      end
    end
  end
end
