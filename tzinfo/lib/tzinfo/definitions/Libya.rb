require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Libya #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Libya', 'Africa/Tripoli'
    end
  end
end
