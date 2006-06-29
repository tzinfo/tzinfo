require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Nicosia #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Nicosia', 'Asia/Nicosia'
      end
    end
  end
end
