require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Chungking #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Chungking', 'Asia/Chongqing'
      end
    end
  end
end
