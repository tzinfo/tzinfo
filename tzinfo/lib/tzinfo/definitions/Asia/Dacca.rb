require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Dacca #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Dacca', 'Asia/Dhaka'
      end
    end
  end
end
