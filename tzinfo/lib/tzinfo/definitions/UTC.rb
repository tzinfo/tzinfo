require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module UTC #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'UTC', 'Etc/UTC'
    end
  end
end
