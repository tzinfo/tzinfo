require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Pacific #:nodoc:
      module Truk #:nodoc:
        include TimezoneDefinition
        
        timezone 'Pacific/Truk' do |tz|
          tz.offset :o0, 36428, 0, :LMT
          tz.offset :o1, 36000, 0, :TRUT
          
          tz.transition 1900, 12, :o1, 52172317693, 21600
        end
      end
    end
  end
end
