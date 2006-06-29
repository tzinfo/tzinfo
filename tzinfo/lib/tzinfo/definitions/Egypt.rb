require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Egypt #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Egypt', 'Africa/Cairo'
    end
  end
end
