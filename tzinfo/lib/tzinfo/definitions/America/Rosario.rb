require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Rosario #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Rosario', 'America/Argentina/Cordoba'
      end
    end
  end
end
