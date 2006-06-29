require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Porto_Acre #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Porto_Acre', 'America/Rio_Branco'
      end
    end
  end
end
