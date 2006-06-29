require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Knox_IN #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Knox_IN', 'America/Indiana/Knox'
      end
    end
  end
end
