require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Arizona #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Arizona', 'America/Phoenix'
      end
    end
  end
end
