require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module North #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/North', 'Australia/Darwin'
      end
    end
  end
end
