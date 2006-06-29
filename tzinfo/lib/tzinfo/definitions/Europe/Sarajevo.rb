require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Sarajevo #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Sarajevo', 'Europe/Belgrade'
      end
    end
  end
end
