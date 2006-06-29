require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Zulu #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Zulu', 'Etc/UTC'
    end
  end
end
