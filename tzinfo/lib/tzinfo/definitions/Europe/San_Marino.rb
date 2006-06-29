require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module San_Marino #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/San_Marino', 'Europe/Rome'
      end
    end
  end
end
