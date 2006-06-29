require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module ACT #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/ACT', 'Australia/Sydney'
      end
    end
  end
end
