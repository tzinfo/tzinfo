require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module GMT__p__0 #:nodoc:
      include TimezoneDefinition
      
      linked_timezone 'GMT+0', 'Etc/GMT'
    end
  end
end
