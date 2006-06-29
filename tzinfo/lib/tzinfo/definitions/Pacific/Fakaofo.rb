require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Pacific #:nodoc:
      module Fakaofo #:nodoc:
        include TimezoneDefinition
        
        timezone 'Pacific/Fakaofo' do |tz|
          tz.offset :o0, -41096, 0, :LMT
          tz.offset :o1, -36000, 0, :TKT
          
          tz.transition 1901, 1, :o1, 26086168537, 10800
        end
      end
    end
  end
end
