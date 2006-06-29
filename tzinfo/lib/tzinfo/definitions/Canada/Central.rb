require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Central #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Central', 'America/Winnipeg'
      end
    end
  end
end
