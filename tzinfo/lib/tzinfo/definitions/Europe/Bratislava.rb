require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Bratislava #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Bratislava', 'Europe/Prague'
      end
    end
  end
end
