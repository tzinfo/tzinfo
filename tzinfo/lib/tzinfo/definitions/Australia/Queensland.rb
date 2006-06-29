require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module Queensland #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/Queensland', 'Australia/Brisbane'
      end
    end
  end
end
