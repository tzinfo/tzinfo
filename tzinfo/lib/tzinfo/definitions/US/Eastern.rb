require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module Eastern #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/Eastern', 'America/New_York'
      end
    end
  end
end
