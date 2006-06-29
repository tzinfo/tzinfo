require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Chile #:nodoc:
      module Continental #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Chile/Continental', 'America/Santiago'
      end
    end
  end
end
