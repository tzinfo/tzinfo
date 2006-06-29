require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Hongkong #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Hongkong', 'Asia/Hong_Kong'
    end
  end
end
