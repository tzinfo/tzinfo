require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module MST #:nodoc:
      include TimezoneDefinition
      
      timezone 'MST' do |tz|
        tz.offset :o0, -25200, 0, :MST
        
      end
    end
  end
end
