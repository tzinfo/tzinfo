require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Navajo #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Navajo', 'America/Denver'
    end
  end
end
