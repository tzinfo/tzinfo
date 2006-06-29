require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Ashkhabad #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Ashkhabad', 'Asia/Ashgabat'
      end
    end
  end
end
