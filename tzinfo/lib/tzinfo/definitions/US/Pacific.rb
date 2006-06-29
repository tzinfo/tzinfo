require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Pacific #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Pacific', 'America/Los_Angeles'
      end
    end
  end
end
