require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Antarctica #:nodoc:
      module South_Pole #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Antarctica/South_Pole', 'Antarctica/McMurdo'
      end
    end
  end
end
