require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Aden #:nodoc:
        include TimezoneDefinition
        
        timezone 'Asia/Aden' do |tz|
          tz.offset :o0, 10848, 0, :LMT
          tz.offset :o1, 10800, 0, :AST
          
          tz.transition 1949, 12, :o1, 2189954137, 900
        end
      end
    end
  end
end
