require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Europe #:nodoc:
      module Skopje #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Europe/Skopje', 'Europe/Belgrade'
      end
    end
  end
end
