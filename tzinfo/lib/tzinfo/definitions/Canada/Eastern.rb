require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Eastern #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Eastern', 'America/Toronto'
      end
    end
  end
end
