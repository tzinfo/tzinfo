require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Virgin #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'America/Virgin', 'America/St_Thomas'
      end
    end
  end
end
