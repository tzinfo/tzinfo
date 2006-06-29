require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Mountain #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Mountain', 'America/Denver'
      end
    end
  end
end
