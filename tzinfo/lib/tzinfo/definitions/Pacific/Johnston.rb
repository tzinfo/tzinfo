require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Pacific #:nodoc:
      module Johnston #:nodoc:
        include TimezoneDefinition
        
        timezone 'Pacific/Johnston' do |tz|
          tz.offset :o0, -36000, 0, :HST
          
        end
      end
    end
  end
end
