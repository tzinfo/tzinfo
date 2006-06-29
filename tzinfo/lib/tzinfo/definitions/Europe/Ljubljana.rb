require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Ljubljana #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Ljubljana', 'Europe/Belgrade'
      end
    end
  end
end
