require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Central #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Central', 'America/Chicago'
      end
    end
  end
end
