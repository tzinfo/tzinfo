require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Turkey #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Turkey', 'Europe/Istanbul'
    end
  end
end
