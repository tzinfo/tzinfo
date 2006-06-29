require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Vatican #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Vatican', 'Europe/Rome'
      end
    end
  end
end
