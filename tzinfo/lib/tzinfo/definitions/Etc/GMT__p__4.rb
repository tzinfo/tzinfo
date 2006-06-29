require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__p__4 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT+4' do |tz|
          tz.offset :o0, -14400, 0, :'GMT+4'
          
        end
      end
    end
  end
end
