require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module PRC #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'PRC', 'Asia/Shanghai'
    end
  end
end
