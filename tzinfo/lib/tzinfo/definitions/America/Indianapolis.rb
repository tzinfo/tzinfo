require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Indianapolis #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Indianapolis', 'America/Indiana/Indianapolis'
      end
    end
  end
end
