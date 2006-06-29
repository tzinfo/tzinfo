require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module Zulu #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Etc/Zulu', 'Etc/UTC'
      end
    end
  end
end
