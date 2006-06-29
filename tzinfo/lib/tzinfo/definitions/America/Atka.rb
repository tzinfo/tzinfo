require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Atka #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Atka', 'America/Adak'
      end
    end
  end
end
