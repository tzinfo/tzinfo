require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Indian #:nodoc:
      module Mayotte #:nodoc:
        include TimezoneDefinition
        
        timezone 'Indian/Mayotte' do |tz|
          tz.offset :o0, 10856, 0, :LMT
          tz.offset :o1, 10800, 0, :EAT
          
          tz.transition 1911, 6, :o1, 26127558443, 10800
        end
      end
    end
  end
end
