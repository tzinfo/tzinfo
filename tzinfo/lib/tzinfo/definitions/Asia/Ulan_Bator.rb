require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Ulan_Bator #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Ulan_Bator', 'Asia/Ulaanbaatar'
      end
    end
  end
end
