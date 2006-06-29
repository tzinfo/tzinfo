require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Mendoza #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Mendoza', 'America/Argentina/Mendoza'
      end
    end
  end
end
