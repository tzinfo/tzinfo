require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Belfast #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Belfast', 'Europe/London'
      end
    end
  end
end
