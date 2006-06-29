require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Mariehamn #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Mariehamn', 'Europe/Helsinki'
      end
    end
  end
end
