require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module UCT #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'UCT', 'Etc/UCT'
    end
  end
end
