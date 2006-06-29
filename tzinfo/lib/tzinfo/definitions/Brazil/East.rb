require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Brazil #:nodoc:
      module East #:nodoc:
        include TimezoneDefinition
        
        linked_timezone 'Brazil/East', 'America/Sao_Paulo'
      end
    end
  end
end
