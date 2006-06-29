require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Portugal #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Portugal', 'Europe/Lisbon'
    end
  end
end
