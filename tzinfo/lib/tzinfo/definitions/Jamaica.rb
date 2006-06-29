require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Jamaica #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Jamaica', 'America/Jamaica'
    end
  end
end
