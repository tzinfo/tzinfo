require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Etc #:nodoc:
      module GMT__p__12 #:nodoc:
        include TimezoneDefinition
        
        timezone 'Etc/GMT+12' do |tz|
          tz.offset :o0, -43200, 0, :'GMT+12'
          
        end
      end
    end
  end
end
