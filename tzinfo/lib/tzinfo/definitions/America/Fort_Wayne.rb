require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Fort_Wayne #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Fort_Wayne', 'America/Indiana/Indianapolis'
      end
    end
  end
end
