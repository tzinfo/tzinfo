require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module ROK #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'ROK', 'Asia/Seoul'
    end
  end
end
