require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Iceland #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Iceland', 'Atlantic/Reykjavik'
    end
  end
end
