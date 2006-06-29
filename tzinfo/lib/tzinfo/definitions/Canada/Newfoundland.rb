require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Newfoundland #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Newfoundland', 'America/St_Johns'
      end
    end
  end
end
