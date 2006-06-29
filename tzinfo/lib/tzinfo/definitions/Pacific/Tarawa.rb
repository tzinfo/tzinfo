require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Pacific #:nodoc:
      module Tarawa #:nodoc:
        include TimezoneDefinition
        
        timezone 'Pacific/Tarawa' do |tz|
          tz.offset :o0, 41524, 0, :LMT
          tz.offset :o1, 43200, 0, :GILT
          
          tz.transition 1900, 12, :o1, 52172316419, 21600
        end
      end
    end
  end
end
