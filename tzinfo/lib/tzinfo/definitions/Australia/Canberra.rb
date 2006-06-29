require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module Canberra #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/Canberra', 'Australia/Sydney'
      end
    end
  end
end
