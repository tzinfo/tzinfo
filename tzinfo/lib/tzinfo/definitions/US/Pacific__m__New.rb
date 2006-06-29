require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Pacific__m__New #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Pacific-New', 'America/Los_Angeles'
      end
    end
  end
end
