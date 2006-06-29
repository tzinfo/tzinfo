require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Poland #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Poland', 'Europe/Warsaw'
    end
  end
end
