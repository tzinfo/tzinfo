require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Antarctica #:nodoc:
      module Casey #:nodoc:
        include TimezoneDefinition
        
        timezone 'Antarctica/Casey' do |tz|
          tz.offset :o0, 0, 0, :zzz
          tz.offset :o1, 28800, 0, :WST
          
          tz.transition 1969, 1, :o1, 4880445, 2
        end
      end
    end
  end
end
