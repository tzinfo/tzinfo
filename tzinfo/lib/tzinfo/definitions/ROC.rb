require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module ROC #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'ROC', 'Asia/Taipei'
    end
  end
end
