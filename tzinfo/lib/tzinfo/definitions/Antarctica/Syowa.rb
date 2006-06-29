require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Antarctica #:nodoc:
      module Syowa #:nodoc:
        include TimezoneDefinition
        
        timezone 'Antarctica/Syowa' do |tz|
          tz.offset :o0, 0, 0, :zzz
          tz.offset :o1, 10800, 0, :SYOT
          
          tz.transition 1957, 1, :o1, 4871735, 2
        end
      end
    end
  end
end
