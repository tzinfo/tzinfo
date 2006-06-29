require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Brazil #:nodoc:
      module West #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Brazil/West', 'America/Manaus'
      end
    end
  end
end
