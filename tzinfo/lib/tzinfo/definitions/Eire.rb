require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Eire #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'Eire', 'Europe/Dublin'
    end
  end
end
