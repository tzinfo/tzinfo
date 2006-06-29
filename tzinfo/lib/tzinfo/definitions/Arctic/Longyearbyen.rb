require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Arctic #:nodoc:
      module Longyearbyen #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Arctic/Longyearbyen', 'Europe/Oslo'
      end
    end
  end
end
