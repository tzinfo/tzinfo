require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module GMT #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'GMT', 'Etc/GMT'
    end
  end
end
