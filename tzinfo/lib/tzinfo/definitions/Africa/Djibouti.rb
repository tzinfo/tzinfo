require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Africa #:nodoc:
      module Djibouti #:nodoc:
        include TimezoneDefinition
        
        timezone 'Africa/Djibouti' do |tz|
          tz.offset :o0, 10356, 0, :LMT
          tz.offset :o1, 10800, 0, :EAT
          
          tz.transition 1911, 6, :o1, 17418372337, 7200
        end
      end
    end
  end
end
