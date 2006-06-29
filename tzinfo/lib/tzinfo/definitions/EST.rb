require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module EST #:nodoc:
      include TimezoneDefinition
      
      timezone 'EST' do |tz|
        tz.offset :o0, -18000, 0, :EST
        
      end
    end
  end
end
