require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Pacific #:nodoc:
      module Yap #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Pacific/Yap', 'Pacific/Truk'
      end
    end
  end
end
