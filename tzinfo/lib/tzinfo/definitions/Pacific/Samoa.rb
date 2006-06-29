require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Pacific #:nodoc:
      module Samoa #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Pacific/Samoa', 'Pacific/Pago_Pago'
      end
    end
  end
end
