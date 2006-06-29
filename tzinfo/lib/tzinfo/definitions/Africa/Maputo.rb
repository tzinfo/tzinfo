require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Africa #:nodoc:
      module Maputo #:nodoc:
        include TimezoneDefinition
        
        timezone 'Africa/Maputo' do |tz|
          tz.offset :o0, 7820, 0, :LMT
          tz.offset :o1, 7200, 0, :CAT
          
          tz.transition 1903, 2, :o1, 10437873449, 4320
        end
      end
    end
  end
end
