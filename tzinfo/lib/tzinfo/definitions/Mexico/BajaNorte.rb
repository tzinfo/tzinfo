require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Mexico #:nodoc:
      module BajaNorte #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Mexico/BajaNorte', 'America/Tijuana'
      end
    end
  end
end
