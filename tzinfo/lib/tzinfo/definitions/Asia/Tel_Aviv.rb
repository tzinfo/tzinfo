require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Tel_Aviv #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Tel_Aviv', 'Asia/Jerusalem'
      end
    end
  end
end
