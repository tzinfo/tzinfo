require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Canada #:nodoc:
      module East__m__Saskatchewan #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Canada/East-Saskatchewan', 'America/Regina'
      end
    end
  end
end
