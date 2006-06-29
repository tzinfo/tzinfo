require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Catamarca #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Catamarca', 'America/Argentina/Catamarca'
      end
    end
  end
end
