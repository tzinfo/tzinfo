require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Japan #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Japan', 'Asia/Tokyo'
    end
  end
end
