require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Hawaii #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Hawaii', 'Pacific/Honolulu'
      end
    end
  end
end
