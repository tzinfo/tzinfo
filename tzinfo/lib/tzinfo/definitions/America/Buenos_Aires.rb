require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Buenos_Aires #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Buenos_Aires', 'America/Argentina/Buenos_Aires'
      end
    end
  end
end
