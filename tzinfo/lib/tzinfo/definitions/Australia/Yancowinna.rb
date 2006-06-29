require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module Yancowinna #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/Yancowinna', 'Australia/Broken_Hill'
      end
    end
  end
end
