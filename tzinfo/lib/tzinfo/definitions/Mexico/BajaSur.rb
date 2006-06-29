require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Mexico #:nodoc:
      module BajaSur #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Mexico/BajaSur', 'America/Mazatlan'
      end
    end
  end
end
