require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Mexico #:nodoc:
      module General #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Mexico/General', 'America/Mexico_City'
      end
    end
  end
end
