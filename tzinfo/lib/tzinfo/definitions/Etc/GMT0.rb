require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT0 #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Etc/GMT0', 'Etc/GMT'
      end
    end
  end
end
