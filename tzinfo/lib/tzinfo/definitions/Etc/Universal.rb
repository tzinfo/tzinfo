require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module Universal #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Etc/Universal', 'Etc/UTC'
      end
    end
  end
end
