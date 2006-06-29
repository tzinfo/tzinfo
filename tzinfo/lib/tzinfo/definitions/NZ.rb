require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module NZ #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'NZ', 'Pacific/Auckland'
    end
  end
end
