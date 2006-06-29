require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module South #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/South', 'Australia/Adelaide'
      end
    end
  end
end
