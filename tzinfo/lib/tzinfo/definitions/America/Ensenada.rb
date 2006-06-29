require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Ensenada #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Ensenada', 'America/Tijuana'
      end
    end
  end
end
