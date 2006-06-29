require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Zagreb #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Zagreb', 'Europe/Belgrade'
      end
    end
  end
end
