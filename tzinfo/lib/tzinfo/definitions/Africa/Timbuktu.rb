require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Africa #:nodoc:
      module Timbuktu #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Africa/Timbuktu', 'Africa/Bamako'
      end
    end
  end
end
