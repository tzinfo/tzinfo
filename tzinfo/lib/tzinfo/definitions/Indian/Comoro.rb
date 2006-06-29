require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Indian #:nodoc:
      module Comoro #:nodoc:
        include TimezoneDefinition
        
        timezone 'Indian/Comoro' do |tz|
          tz.offset :o0, 10384, 0, :LMT
          tz.offset :o1, 10800, 0, :EAT
          
          tz.transition 1911, 6, :o1, 13063779251, 5400
        end
      end
    end
  end
end
