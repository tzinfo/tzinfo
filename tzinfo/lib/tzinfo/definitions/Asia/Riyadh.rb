require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Riyadh #:nodoc:
        include TimezoneDefinition
        
        timezone 'Asia/Riyadh' do |tz|
          tz.offset :o0, 11212, 0, :LMT
          tz.offset :o1, 10800, 0, :AST
          
          tz.transition 1949, 12, :o1, 52558899197, 21600
        end
      end
    end
  end
end
