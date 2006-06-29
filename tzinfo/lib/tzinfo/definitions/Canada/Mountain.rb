require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Mountain #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Mountain', 'America/Edmonton'
      end
    end
  end
end
