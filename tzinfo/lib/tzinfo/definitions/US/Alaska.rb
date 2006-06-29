require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Alaska #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Alaska', 'America/Anchorage'
      end
    end
  end
end
