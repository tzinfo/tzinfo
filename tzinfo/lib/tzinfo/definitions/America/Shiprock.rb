require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Shiprock #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Shiprock', 'America/Denver'
      end
    end
  end
end
