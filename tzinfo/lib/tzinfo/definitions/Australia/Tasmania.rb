require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module Tasmania #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/Tasmania', 'Australia/Hobart'
      end
    end
  end
end
