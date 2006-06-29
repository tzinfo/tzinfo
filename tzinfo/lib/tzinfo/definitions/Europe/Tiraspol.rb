require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Tiraspol #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Tiraspol', 'Europe/Chisinau'
      end
    end
  end
end
