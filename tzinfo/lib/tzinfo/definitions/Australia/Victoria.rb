require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Australia #:nodoc:
      module Victoria #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Australia/Victoria', 'Australia/Melbourne'
      end
    end
  end
end
