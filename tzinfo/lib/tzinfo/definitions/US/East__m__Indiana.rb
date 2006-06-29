require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module US #:nodoc:
      module East__m__Indiana #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'US/East-Indiana', 'America/Indiana/Indianapolis'
      end
    end
  end
end
