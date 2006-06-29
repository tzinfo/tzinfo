require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module America #:nodoc:
      module Port_of_Spain #:nodoc:
        include TimezoneDefinition
        
        timezone 'America/Port_of_Spain' do |tz|
          tz.offset :o0, -14764, 0, :LMT
          tz.offset :o1, -14400, 0, :AST
          
          tz.transition 1912, 3, :o1, 52260415291, 21600
        end
      end
    end
  end
end
