require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Cordoba #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Cordoba', 'America/Argentina/Cordoba'
      end
    end
  end
end
