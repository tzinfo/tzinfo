require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Africa #:nodoc:
      module Harare #:nodoc:
        include TimezoneDefinition
        
        timezone 'Africa/Harare' do |tz|
          tz.offset :o0, 7452, 0, :LMT
          tz.offset :o1, 7200, 0, :CAT
          
          tz.transition 1903, 2, :o1, 1932939531, 800
        end
      end
    end
  end
end
