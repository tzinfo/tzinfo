require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__p__7 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT+7' do |tz|
          tz.offset :o0, -25200, 0, :'GMT+7'
          
        end
      end
    end
  end
end
