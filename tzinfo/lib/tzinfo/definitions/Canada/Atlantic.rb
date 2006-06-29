require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Atlantic #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Atlantic', 'America/Halifax'
      end
    end
  end
end
