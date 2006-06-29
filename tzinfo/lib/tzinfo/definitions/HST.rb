require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module HST #:nodoc:
      include TimezoneDefinition
      
      timezone 'HST' do |tz|
        tz.offset :o0, -36000, 0, :HST
        
      end
    end
  end
end
