require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module NSW #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/NSW', 'Australia/Sydney'
      end
    end
  end
end
