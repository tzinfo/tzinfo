require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Iran #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Iran', 'Asia/Tehran'
    end
  end
end
