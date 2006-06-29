require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Michigan #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Michigan', 'America/Detroit'
      end
    end
  end
end
