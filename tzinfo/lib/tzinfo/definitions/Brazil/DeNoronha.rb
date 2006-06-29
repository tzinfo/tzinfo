require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Brazil #:nodoc:
      module DeNoronha #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Brazil/DeNoronha', 'America/Noronha'
      end
    end
  end
end
