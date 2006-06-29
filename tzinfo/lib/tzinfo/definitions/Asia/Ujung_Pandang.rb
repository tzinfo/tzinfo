require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Ujung_Pandang #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Asia/Ujung_Pandang', 'Asia/Makassar'
      end
    end
  end
end
