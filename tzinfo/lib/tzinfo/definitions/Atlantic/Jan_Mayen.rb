require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Atlantic #:nodoc:
      module Jan_Mayen #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Atlantic/Jan_Mayen', 'Europe/Oslo'
      end
    end
  end
end
