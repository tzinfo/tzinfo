require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Pacific #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Pacific', 'America/Vancouver'
      end
    end
  end
end
