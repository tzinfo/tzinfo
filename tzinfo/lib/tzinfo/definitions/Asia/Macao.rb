require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Macao #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Macao', 'Asia/Macau'
      end
    end
  end
end
