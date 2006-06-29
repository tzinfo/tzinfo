require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module Saskatchewan #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/Saskatchewan', 'America/Regina'
      end
    end
  end
end
