require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module GB #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'GB', 'Europe/London'
    end
  end
end
