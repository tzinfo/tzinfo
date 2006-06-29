require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Pacific #:nodoc:
      module Tahiti #:nodoc:
        include TimezoneDefinition
        
        timezone 'Pacific/Tahiti' do |tz|
          tz.offset :o0, -35896, 0, :LMT
          tz.offset :o1, -36000, 0, :TAHT
          
          tz.transition 1912, 10, :o1, 26132510687, 10800
        end
      end
    end
  end
end
