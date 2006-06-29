require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Thimbu #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Thimbu', 'Asia/Thimphu'
      end
    end
  end
end
