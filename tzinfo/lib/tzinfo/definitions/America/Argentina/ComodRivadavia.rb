require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Argentina #:nodoc:
        module ComodRivadavia #:nodoc:
          include TimezoneDefinition
          
          linked_timezone 'America/Argentina/ComodRivadavia', 'America/Argentina/Catamarca'
        end
      end
    end
  end
end
