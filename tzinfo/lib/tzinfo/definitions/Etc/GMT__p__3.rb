require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__p__3 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT+3' do |tz|
          tz.offset :o0, -10800, 0, :'GMT+3'
          
        end
      end
    end
  end
end
