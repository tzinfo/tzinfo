require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Israel #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Israel', 'Asia/Jerusalem'
    end
  end
end
