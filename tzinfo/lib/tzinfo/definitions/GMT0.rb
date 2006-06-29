require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module GMT0 #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'GMT0', 'Etc/GMT'
    end
  end
end
