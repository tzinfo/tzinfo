require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module Greenwich #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Etc/Greenwich', 'Etc/GMT'
      end
    end
  end
end
