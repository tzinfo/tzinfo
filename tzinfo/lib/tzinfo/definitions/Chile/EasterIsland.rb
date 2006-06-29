require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Chile #:nodoc:
      module EasterIsland #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Chile/EasterIsland', 'Pacific/Easter'
      end
    end
  end
end
