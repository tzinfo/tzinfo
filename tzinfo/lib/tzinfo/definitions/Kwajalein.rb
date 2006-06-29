require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Kwajalein #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Kwajalein', 'Pacific/Kwajalein'
    end
  end
end
