require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module GB__m__Eire #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'GB-Eire', 'Europe/London'
    end
  end
end
