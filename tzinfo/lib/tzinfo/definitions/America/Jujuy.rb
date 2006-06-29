require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Jujuy #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Jujuy', 'America/Argentina/Jujuy'
      end
    end
  end
end
