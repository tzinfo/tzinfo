require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Brazil #:nodoc:
      module Acre #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Brazil/Acre', 'America/Rio_Branco'
      end
    end
  end
end
