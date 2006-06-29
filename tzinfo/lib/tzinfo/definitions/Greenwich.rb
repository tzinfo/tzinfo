require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Greenwich #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Greenwich', 'Etc/GMT'
    end
  end
end
