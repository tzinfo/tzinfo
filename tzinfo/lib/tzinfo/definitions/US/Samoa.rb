require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Samoa #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Samoa', 'Pacific/Pago_Pago'
      end
    end
  end
end
