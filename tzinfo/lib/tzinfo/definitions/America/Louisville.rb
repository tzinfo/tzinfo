require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Louisville #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Louisville', 'America/Kentucky/Louisville'
      end
    end
  end
end
