require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Universal #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Universal', 'Etc/UTC'
    end
  end
end
