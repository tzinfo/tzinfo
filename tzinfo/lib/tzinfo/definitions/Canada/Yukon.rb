require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Yukon #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Yukon', 'America/Whitehorse'
      end
    end
  end
end
